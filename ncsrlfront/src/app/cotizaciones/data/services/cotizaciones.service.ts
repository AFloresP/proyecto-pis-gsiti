import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { GeneralCollection } from '@app/_general/models/general-collection.model';
import { Cotizacion, CotizacionJSON } from '../models/cotizacion.model';
import { environment } from "@environments/environment";

@Injectable({
    providedIn: 'root'
})
export class CotizacionesService {

    constructor(private http: HttpClient) { }

    getCotizaciones(param: void): Observable<GeneralCollection<Cotizacion>> {
        return this.http.get<GeneralCollection<Cotizacion>>(`${environment.apiBase}` + 'cotizacion-cliente/get');
    }
    getCotizacion(id: number): Observable<CotizacionJSON> {
        return this.http.get<CotizacionJSON>(`${environment.apiBase}` + 'cotizacion-cliente/get/' + id);
    }
    // getProyectoTerminado(param: void): Observable<GeneralCollection<Proyecto>> {
    //     return this.http.get<GeneralCollection<Proyecto>>(`${environment.apiBase}` + 'proyecto/getTerminados');
    // }
    // getProyectoProceso(param: void): Observable<GeneralCollection<Proyecto>> {
    //     return this.http.get<GeneralCollection<Proyecto>>(`${environment.apiBase}` + 'proyecto/getProceso');
    // }    
    createCotizacion(cotizacion: any): any {
        return this.http.post<any>(`${environment.apiBase}` + 'cotizacion-cliente/create', cotizacion);
    }
    // updateProyecto(proyect: Proyecto): any {
    //     return this.http.post<any>(`${environment.apiBase}` + 'proyecto/update/' + proyect.id_proy, proyect);
    // }
    anularCotizacion(id: number):any {
        return this.http.get<any>(`${environment.apiBase}` + 'cotizacion-cliente/annul/' + id);
    }
}
