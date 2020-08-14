import { Component, OnInit } from '@angular/core';
import { MessageService, ConfirmationService } from 'primeng/api';
import { CotizacionesService } from "@app/cotizaciones/data/services/cotizaciones.service";
import { GeneralCollection } from '@app/_general/models/general-collection.model';
import { Cotizacion, CotizacionJSON } from '@app/cotizaciones/data/models/cotizacion.model';
import { ActivatedRoute, Router } from '@angular/router';
import { GeneralService } from '@app/_general/services/general.service';
import { PdfMakeWrapper, Table, Txt, Columns, Cell, Img } from 'pdfmake-wrapper';
import pdfFonts from "pdfmake/build/vfs_fonts";
import { CotizacionDetalle } from '@app/cotizaciones/data/models/cotizacion-detalle.model';
import * as moment from 'moment';

@Component({
    selector: 'app-cotizaciones',
    templateUrl: './cotizaciones.component.html',
    styleUrls: ['./cotizaciones.component.scss']
})

export class CotizacionesComponent implements OnInit {

    //cotizaciones activas
    cotizacionesActivas: Cotizacion[] = [];
    selectedCotizacionActiva: Cotizacion;
    totalActivas: number;
    loadingActivas: boolean = false;
    //
    cotizacionesAnuladas: Cotizacion[] = [];
    selectedCotizacionAnulada: Cotizacion;
    totalAnuladas: number;
    loadingAnuladas: boolean = false;

    showbar: boolean = false;
    rowsNumber: number = 10;

    pdfSrc = "";
    //pdfSrc : any;
    displayPdfModal: boolean = false;

    pdf: PdfMakeWrapper;
    dialogTitle: string = "";
    loadingPdf: boolean = false;

    constructor(
        private messageService: MessageService,
        private confirmationService: ConfirmationService,
        private cotizacionesService: CotizacionesService,
        private router: Router,
        public activatedroute: ActivatedRoute,
        public gS: GeneralService
    ) {
        var titles = this.activatedroute.snapshot.data['title'];
        this.gS.setTitle(titles.split('/'));
    }

    ngOnInit() {

        // this.getProyectosProceso();
        // this.getProyectosTerminados();

        this.getCotizaciones();

    }

    //cotizaciones
    getCotizaciones() {
        this.loadingActivas = true;
        this.cotizacionesService.getCotizaciones(null).subscribe(
            (_cotizaciones: GeneralCollection<Cotizacion>) => {
                this.separarCotizaciones(_cotizaciones['data']);
                this.loadingActivas = false;
                // this.cotizacionesActivas = _cotizaciones['data'];
                // this.totalActivas = _cotizaciones['size'];
                console.log("DOCS:: ", _cotizaciones)
            },
            (error) => {
                this.loadingActivas = false;
                console.log("ocurrio un error");
            }
        );
    }

    separarCotizaciones(cotizaciones: Cotizacion[]) {
        this.cotizacionesActivas = [];
        this.cotizacionesAnuladas = [];
        cotizaciones.map((cotizacion: Cotizacion) => {
            if (cotizacion.est_reg === "A") {
                this.cotizacionesActivas.push(cotizacion);
            } else {
                this.cotizacionesAnuladas.push(cotizacion);
            }
        });
        this.totalActivas = this.cotizacionesActivas.length
        this.totalAnuladas = this.cotizacionesAnuladas.length
    }

    crear() {
        this.router.navigate(["/cotizaciones/form/new"]);
    }

    anular() {
        if (this.selectedCotizacionActiva) {
            this.confirmationService.confirm({
                message: '¿Quieres anular esta cotizacion?',
                header: 'Confirmacion',
                icon: 'pi pi-info-circle',
                key: 'anularCotizacion',
                accept: () => {
                    this.showbar = true;
                    this.cotizacionesService.anularCotizacion(this.selectedCotizacionActiva.solcli_id).subscribe(
                        (_resp) => {
                            this.showMessage('success', 'Exito', 'Cotizacion anulada');
                            this.getCotizaciones();
                            this.selectedCotizacionActiva = null;
                            this.showbar = false;
                        },
                        (error) => {
                            this.showMessage('error', 'Error', 'Ocurrio un problema al anular');
                            this.showbar = false;
                        });
                },
                reject: () => {

                },
            });
        } else {
            this.showMessage('info', 'Informacion', 'Seleccione una cotizacion');
        }
    }


    generarPdfCotizacionActiva() {

        if (this.selectedCotizacionActiva) {
            this.showbar = true;
            this.loadingPdf = true;
            this.cotizacionesService.getCotizacion(this.selectedCotizacionActiva.solcli_id).subscribe(
                (_cotizacionJSON: CotizacionJSON) => {
                    console.log("cotixacion ", _cotizacionJSON)
                    //////////////////////
                    this.makePdf(_cotizacionJSON.cotizacion, _cotizacionJSON.extension,_cotizacionJSON.logo);
                    ////////////////////////
                    this.showbar = false;
                    this.loadingPdf = false;
                },
                (error) => {
                    console.log("ocurrio un error");
                    this.showbar = false;
                    this.loadingPdf = false;
                }
            );

        } else {
            this.showMessage('info', 'Informacion', 'Seleccione una cotizacion');
        }

    }

    generarPdfCotizacionAnulada() {

        if (this.selectedCotizacionAnulada) {
            this.showbar = true;
            this.loadingPdf = true;
            this.cotizacionesService.getCotizacion(this.selectedCotizacionAnulada.solcli_id).subscribe(
                (_cotizacionJSON: CotizacionJSON) => {
                    console.log("cotixacion ", _cotizacionJSON)
                    //////////////////////
                    this.makePdf(_cotizacionJSON.cotizacion, _cotizacionJSON.extension,_cotizacionJSON.logo);
                    ////////////////////////
                    this.showbar = false;
                    this.loadingPdf = false;
                },
                (error) => {
                    console.log("ocurrio un error");
                    this.showbar = false;
                    this.loadingPdf = false;
                }
            );

        } else {
            this.showMessage('info', 'Informacion', 'Seleccione una cotizacion');
        }

    }

    async makePdf(cotizacion: Cotizacion,ext: string, logo: string) {
        PdfMakeWrapper.setFonts(pdfFonts);
        // const pdf = new PdfMakeWrapper();
        this.pdf = null;
        this.pdf = new PdfMakeWrapper();



        this.pdf.add(
            new Table([
                [
                    new Cell(await new Img('data:image/' + ext + ';base64,' + logo).width(80).height(80).build()).rowSpan(3).end,
                    new Txt('SOLICITUD N°: ' + cotizacion.solcli_cod).alignment('right').fontSize(16).end
                ],
                [
                    '',
                    ''
                ],
                [
                    '',
                    new Txt('Fecha: ' + moment(cotizacion.solcli_fec).format("YYYY-MM-DD")).alignment('right').end
                ]
            ]).widths([70, '*']).layout('noBorders').end
        );

        this.pdf.add(
            this.pdf.ln(1)
        );

        this.pdf.add(
            new Table([
                [
                    new Cell(new Txt('CLIENTE').bold().fontSize(14).end).colSpan(2).end,
                    ''
                ],
                [
                    new Txt('Nombre').bold().end,
                    ': ' + cotizacion.solcli_cli_nom
                ],
                [
                    new Txt('Direccion').bold().end,
                    ': ' + ( (cotizacion.solcli_cli_dir) ? cotizacion.solcli_cli_dir : '' )
                ],
                [
                    new Txt('Tipo Documento').bold().end,
                    ': ' + ( (cotizacion.solcli_cli_tipdoc) ? cotizacion.solcli_cli_tipdoc : '' )
                ],
                [
                    new Txt('Nro. Documento').bold().end,
                    ': ' + ( (cotizacion.solcli_cli_numdoc) ? cotizacion.solcli_cli_numdoc : '' )
                ],
                [
                    new Txt('Contacto').bold().end,
                    ': ' + ( (cotizacion.solcli_cli_con) ?  cotizacion.solcli_cli_con : '')
                ]
            ]).widths([120, '*']).layout('noBorders').end
        );

        this.pdf.add(
            this.pdf.ln(1)
        );

        this.pdf.add(
            new Columns(['INTEGRADOR', 'PROYECTO']).columnGap(10).fontSize(14).bold().end
        );
        this.pdf.add(
            new Columns([new Txt(cotizacion.solcli_col_nom).end, new Txt(( (cotizacion.solcli_proy_cod) ? cotizacion.solcli_proy_cod : '' ) + ' ' + ( (cotizacion.solcli_proy_nom) ? cotizacion.solcli_proy_nom : '' )).end]).columnGap(10).end
        );

        this.pdf.add(
            this.pdf.ln(1)
        );

        var grid = [];
        grid.push([
            new Txt('TIPO').bold().end,
            new Txt('CANTIDAD').bold().end,
            new Txt('CODIGO').bold().end,
            new Txt('DESCRIPCION').bold().end,
            new Txt('MARCA').bold().end
        ]);

        cotizacion.cotizacion_detalle.map((detalle: CotizacionDetalle) => {
            let row = [
                (detalle.solclidet_prod_serv === 1) ? 'Producto' : 'Servicio',
                detalle.solclidet_prod_can,
                detalle.solclidet_prod_codint,
                detalle.solclidet_des,
                detalle.solclidet_prod_marc
            ];
            grid.push(row);
        });

        this.pdf.add(
            new Table(grid).widths([70, 70, 100, '*', 50,]).end
        );
        ////////////////////
        this.pdf.create().getBlob((resp: any) => {
            const _url = URL.createObjectURL(resp);
            this.pdfSrc = _url;
            this.dialogTitle = cotizacion.solcli_cod;
            this.displayPdfModal = true;
        });
        // const _url = URL.createObjectURL(pdf.create().getBlob());
        // this.pdfSrc = _url;
        //this.displayPdfModal = true;
        //////////////////////
        //doc.save('Test.pdf');
    }

    downloadPdf() {
        this.pdf.create().download(this.dialogTitle);
    }

    cancel() {
        this.displayPdfModal = false;
    }

    // _base64ToArrayBuffer(base64) {
    //     var binary_string = base64.replace(/\\n/g, '');
    //   binary_string =  window.atob(base64);
    //   var len = binary_string.length;
    //   var bytes = new Uint8Array( len );
    //   for (var i = 0; i < len; i++)        {
    //       bytes[i] = binary_string.charCodeAt(i);
    //   }
    //   return bytes.buffer;
    // }

    //mensajes 
    showMessage(_severity: string, _summary: string, _detail: string) {
        this.messageService.add({ severity: _severity, summary: _summary, detail: _detail });
    }

}
