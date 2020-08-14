//Librerías
import { CommonModule } from '@angular/common';
import { HttpClientModule, HTTP_INTERCEPTORS } from '@angular/common/http';
import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core'; 
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { LanguageTranslationModule } from './shared/modules/language-translation/language-translation.module'

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { AuthGuard } from './shared';
import { MessageService } from "primeng/api";
import { ToastModule } from 'primeng/toast';

//Modulos
import { HomeModule } from "./home/home.module";
import { DashboardModule } from "./dashboard/dashboard.module";
import { InventarioModule } from "./inventario/inventario.module";
import { FacturacionModule } from "./facturacion/facturacion.module";
import { UsuariosModule } from "./usuarios/usuarios.module";
import { ClientesModule } from "./clientes/clientes.module";
import { ProveedoresModule } from "./proveedores/proveedores.module";
import { ProyectosModule } from "./proyectos/proyectos.module";
import { RegistroCambiosModule } from "./registro-cambios/registro-cambios.module"
import { EmpresaModule } from "./empresa/empresa.module";
import { CotizacionesModule } from "./cotizaciones/cotizaciones.module"

import { AuthService } from './_general/services/auth.service';
import { JwtInterceptor } from './_general/interceptors/jwt.interceptor';
import { ErrorInterceptor } from './_general/interceptors/error.interceptor';
import { TablasReferencialesModule } from './tablas-referenciales/tablas-referenciales.module';


@NgModule({
  declarations: [
    AppComponent
  ],
  imports: [
    CommonModule,
    BrowserModule,
    BrowserAnimationsModule,
    HttpClientModule,
    LanguageTranslationModule,
    AppRoutingModule,
    ToastModule,
    HomeModule,
    DashboardModule,
    InventarioModule,
    FacturacionModule,
    UsuariosModule,
    ClientesModule,
    ProveedoresModule,
    ProyectosModule,
    RegistroCambiosModule,
    TablasReferencialesModule,
    EmpresaModule,
    CotizacionesModule
  ],
  providers: [
    AuthGuard,
    MessageService,
    AuthService,
    {provide: HTTP_INTERCEPTORS, useClass: JwtInterceptor, multi: true},
    {provide: HTTP_INTERCEPTORS, useClass: ErrorInterceptor, multi: true}
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
