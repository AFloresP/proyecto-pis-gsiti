import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { AuthGuard } from '@app/_general/guards/auth.guard';

import { LayoutComponent } from './home/presentation/layout/layout.component';
import { DashboardComponent } from './dashboard/presentation/dashboard/dashboard.component';
import { LoginComponent } from './home/presentation/login/login.component';
import { SignupComponent } from './home/presentation/signup/signup.component';
import { ServerErrorComponent } from './home/presentation/server-error/server-error.component';
import { NotFoundComponent } from './home/presentation/not-found/not-found.component';
import { AccessDeniedComponent } from './home/presentation/access-denied/access-denied.component';
import { ProductosComponent } from './inventario/presentation/productos/productos.component';
import { FacturacionComponent } from './facturacion/presentation/facturacion/facturacion.component';
import { ColaboradorComponent} from './usuarios/presentation/colaborador/colaborador.component';
import { ClienteComponent} from './clientes/presentacion/cliente.component';
import { ProveedorComponent} from './proveedores/presentacion/proveedor.component';
import { ProyectosComponent } from './proyectos/presentation/proyectos/proyectos.component';
import { LogsComponent } from './registro-cambios/presentacion/logs/logs.component';
import { TablasReferencialesComponent } from './tablas-referenciales/presentacion/tablas-referenciales/tablas-referenciales.component';
import { ChangePasswordComponent } from './home/presentation/change-password/change-password.component';
import { EmpresaComponent } from './empresa/presentation/empresa/empresa.component';
import { CotizacionesComponent } from './cotizaciones/presentation/cotizaciones/cotizaciones.component';
import { CotizacionesFormComponent } from './cotizaciones/presentation/cotizaciones-form/cotizaciones-form.component';

//const routes: Routes = [];
// const routes: Routes = [
//   { path: '', loadChildren: './layout/layout.module#LayoutModule', canActivate: [AuthGuard] },
//   { path: 'login', loadChildren: './login/login.module#LoginModule' },
//   { path: 'signup', loadChildren: './signup/signup.module#SignupModule' },
//   { path: 'error', loadChildren: './server-error/server-error.module#ServerErrorModule' },
//   { path: 'access-denied', loadChildren: './access-denied/access-denied.module#AccessDeniedModule' },
//   { path: 'not-found', loadChildren: './not-found/not-found.module#NotFoundModule' },
//   { path: '**', redirectTo: 'not-found' }
// ];

const cotizacionesRoutes: Routes = [
  { path: '', component: CotizacionesComponent, data: { title: 'Cotizaciones'} },
	{ path: 'form/:codproyecto', component: CotizacionesFormComponent, data: { title: 'Cotizaciones/Nueva Cotizacion'} }
];

const routes: Routes = [
	{
    path: "", redirectTo: "dashboard", pathMatch: "full"
  },
  { 
    path: 'login',
    component: LoginComponent
  },
  { 
    path: 'signup',
    component: SignupComponent
  },
  { 
    path: 'access-denied',
    component: AccessDeniedComponent
  },
  { 
    path: 'error',
    component: ServerErrorComponent
  },
  { 
    path: 'not-found',
    component: NotFoundComponent
  },
  {
		path: "",
    component: LayoutComponent,
    canActivate: [AuthGuard],
    data: {title: "Home"},
    children: [
      {path: "dashboard", component: DashboardComponent, data: {title: "Dashboard"}},
      {path: "productos", component: ProductosComponent, data: {title: "Inventario/Productos"}},
      {path: "facturacion", component: FacturacionComponent, data: {title: "Facturacion"}},
      {path: "colaborador", component: ColaboradorComponent, data: {title: "Usuarios/Colaborador"}},
      {path: "clientes", component: ClienteComponent, data: {title: "Clientes"}},
      {path: "proveedores", component: ProveedorComponent, data: {title: "Proveedores"}},
      {path: "proyectos", component: ProyectosComponent, data: {title: "Proyectos"}},
      {path: "cotizaciones", children: cotizacionesRoutes},
      {path: "tablas-referenciales", component: TablasReferencialesComponent, data: {title: "Tablas Referenciales"}},
      {path: "logs", component: LogsComponent, data: {title: "Registro de Cambios del Sistema"}},
      {path: "change-password", component: ChangePasswordComponent, data: {title: "Cambio de contraseña"}},
      {path: "empresa", component: EmpresaComponent, data: {title: "Datos Empresa"}},
    ]
  },
  { 
    path: '**', 
    redirectTo: 'not-found' 
  },
]


@NgModule({
  imports: [RouterModule.forRoot(routes, {useHash: true})],
  exports: [RouterModule]
})
export class AppRoutingModule { }
