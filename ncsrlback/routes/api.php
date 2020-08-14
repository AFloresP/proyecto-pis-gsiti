<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });



//Autenticacion
Route::post('register', 'AuthController@register');
Route::post('login', 'AuthController@authenticate');

Route::group(['middleware' => ['jwt.verify']], function() {

    //Logs
    Route::get('logs/get','LogsController@get')->name('getLogs');

    //Almacen

    //Productos
    Route::get('almacen/productos/get','Almacen\ProductoController@get')->name('getProductos');
    Route::get('almacen/productos/get/{id}','Almacen\ProductoController@getById')->name('getProducto');
    Route::post('almacen/productos/create','Almacen\ProductoController@create')->name('createProducto');
    Route::post('almacen/productos/update/{id}','Almacen\ProductoController@update')->name('updateProducto');
    Route::get('almacen/productos/delete/{id}','Almacen\ProductoController@delete')->name('deleteProducto');
    //Marcas
    Route::get('almacen/marcas/get','Almacen\MarcaController@get')->name('getMarcas');
    Route::get('almacen/marcas/get/{id}','Almacen\MarcaController@getById')->name('getMarca');
    Route::post('almacen/marcas/create','Almacen\MarcaController@create')->name('createMarca');
    Route::post('almacen/marcas/update/{id}','Almacen\MarcaController@update')->name('updateMarca');
    Route::get('almacen/marcas/delete/{id}','Almacen\MarcaController@delete')->name('deleteMarca');
    //Modelos
    Route::get('almacen/modelos/get','Almacen\ModeloController@get')->name('getModelos');
    Route::get('almacen/modelos/get/{id}','Almacen\ModeloController@getById')->name('getModelo');
    Route::post('almacen/modelos/create','Almacen\ModeloController@create')->name('createModelo');
    Route::post('almacen/modelos/update/{id}','Almacen\ModeloController@update')->name('updateModelo');
    Route::get('almacen/modelos/delete/{id}','Almacen\ModeloController@delete')->name('deleteModelo');
    //Fabricantes
    Route::get('almacen/fabricantes/get','Almacen\FabricanteController@get')->name('getFabricantes');
    Route::get('almacen/fabricantes/get/{id}','Almacen\FabricanteController@getById')->name('getFabricante');
    Route::post('almacen/fabricantes/create','Almacen\FabricanteController@create')->name('createFabricante');
    Route::post('almacen/fabricantes/update/{id}','Almacen\FabricanteController@update')->name('updateFabricante');
    Route::get('almacen/fabricantes/delete/{id}','Almacen\FabricanteController@delete')->name('deleteFabricante');
    //Unidades de Medida
    Route::get('almacen/unidadesmedida/get','Almacen\UnidadMedidaController@get')->name('getUnidadesMedida');
    Route::get('almacen/unidadesmedida/get/{id}','Almacen\UnidadMedidaController@getById')->name('getUnidadMedida');
    Route::post('almacen/unidadesmedida/create','Almacen\UnidadMedidaController@create')->name('createUnidadMedida');
    Route::post('almacen/unidadesmedida/update/{id}','Almacen\UnidadMedidaController@update')->name('updateUnidadMedida');
    Route::get('almacen/unidadesmedida/delete/{id}','Almacen\UnidadMedidaController@delete')->name('deleteUnidadMedida');


    ///Usuarios
    //Tipos de Documento
    Route::get('usuarios/tiposdoc/get','Usuarios\TipoDocumentoController@get')->name('getTiposDocumento');
    Route::get('usuarios/tiposdoc/get/{id}','Usuarios\TipoDocumentoController@getById')->name('getTipoDocumento');
    Route::post('usuarios/tiposdoc/create','Usuarios\TipoDocumentoController@create')->name('createTipoDocumento');
    Route::post('usuarios/tiposdoc/update/{id}','Usuarios\TipoDocumentoController@update')->name('updateTipoDocumento');
    Route::get('usuarios/tiposdoc/delete/{id}','Usuarios\TipoDocumentoController@delete')->name('deleteTipoDocumento');

    //Cargos
    Route::get('usuarios/cargos/get','Usuarios\CargoController@get')->name('getCargos');
    Route::get('usuarios/cargos/get/{id}','Usuarios\CargoController@getById')->name('getCargo');
    Route::post('usuarios/cargos/create','Usuarios\CargoController@create')->name('createCargo');
    Route::post('usuarios/cargos/update/{id}','Usuarios\CargoController@update')->name('updateCargo');
    Route::get('usuarios/cargos/delete/{id}','Usuarios\CargoController@delete')->name('deleteCargo');

    //Usuarios
    Route::get('usuarios/get','Usuarios\UserController@get')->name('getUsers');
    Route::get('usuarios/get/{id}','Usuarios\UserController@getById')->name('getUser');
    Route::post('usuarios/create','Usuarios\UserController@create')->name('createUser');
    Route::post('usuarios/update/{id}','Usuarios\UserController@update')->name('updateUser');
    Route::get('usuarios/delete/{id}','Usuarios\UserController@delete')->name('deleteUser');
    Route::get('usuarios/restore/{id}','Usuarios\UserController@restore')->name('restoreUser');
    Route::post('usuarios/update/password/{id}','Usuarios\UserController@updatePassword')->name('updatePassword');

    //Clientes
    Route::get('clientes/get','Clientes\ClienteController@get')->name('getClientes');
    Route::get('clientes/get/{id}','Clientes\ClienteController@getById')->name('getCliente');
    Route::post('clientes/create','Clientes\ClienteController@create')->name('createCliente');
    Route::post('clientes/update/{id}','Clientes\ClienteController@update')->name('updateCliente');
    Route::get('clientes/delete/{id}','Clientes\ClienteController@delete')->name('deleteCliente');
    Route::post('clientes/admconydir/{id}','Clientes\ClienteController@admContactosYdirecciones')->name('admContYdirecsCliente');
    Route::post('clientes/createContacto','Clientes\ClienteController@createContacto')->name('createContacto');
    Route::post('clientes/createDireccion','Clientes\ClienteController@createDireccion')->name('createDireccion');

    //Proveedores
    Route::get('proveedores/get','Proveedores\ProveedorController@get')->name('getProveedores');
    Route::get('proveedores/get/{id}','Proveedores\ProveedorController@getById')->name('getProveedor');
    Route::post('proveedores/create','Proveedores\ProveedorController@create')->name('createProveedor');
    Route::post('proveedores/update/{id}','Proveedores\ProveedorController@update')->name('updateProveedor');
    Route::get('proveedores/delete/{id}','Proveedores\ProveedorController@delete')->name('deleteProveedor');
    Route::post('proveedores/admbancolydir/{id}','Proveedores\ProveedorController@admBancosColaboradoresYdirecciones')->name('admBanColYdirecsProveedor');


    //Proveedores-Direcciones

    Route::get('proveedores-direccion/get','Proveedores\ProveedorDireccionController@get')->name('getProveedoresDireccion');
    Route::get('proveedores-direccion/get/{id}','Proveedores\ProveedorDireccionController@getById')->name('getProveedorDireccion');
    Route::post('proveedores-direccion/update/{id}','Proveedores\ProveedorDireccionController@update')->name('updateProveedorDireccion');
    Route::post('proveedores-direccion/create','Proveedores\ProveedorDireccionController@create')->name('createProveedorDireccion');
    Route::get('proveedores-direccion/delete/{id}','Proveedores\ProveedorDireccionController@delete')->name('deleteProveedorDireccion');

    //Proveedores-Colaborador
    Route::get('proveedores-colaborador/get','Proveedores\ProveedorColaboradorController@get')->name('getProveedoresColaborador');
    Route::get('proveedores-colaborador/get/{id}','Proveedores\ProveedorColaboradorController@getById')->name('getProveedorColaborador');
    Route::post('proveedores-colaborador/create','Proveedores\ProveedorColaboradorController@create')->name('createProveedorColaborador');
    Route::post('proveedores-colaborador/update/{id}','Proveedores\ProveedorColaboradorController@update')->name('updateProveedorColaborador');
    Route::get('proveedores-colaborador/delete/{id}','Proveedores\ProveedorColaboradorController@delete')->name('deleteProveedorColaborador');

    //Proveedores-Banco
    Route::get('proveedores-banco/get','Proveedores\ProveedorBancoController@get')->name('getProveedoresBanco');
    Route::get('proveedores-banco/get/{id}','Proveedores\ProveedorBancoController@getById')->name('getProveedorBanco');
    Route::post('proveedores-banco/create','Proveedores\ProveedorBancoController@create')->name('createProveedorBanco');
    Route::post('proveedores-banco/update/{id}','Proveedores\ProveedorBancoController@update')->name('updateProveedorBanco');
    Route::get('proveedores-banco/delete/{id}','Proveedores\ProveedorBancoController@delete')->name('deleteProveedorBanco');



    //Proyecto
    Route::get('proyecto/get','ProyectoController@get')->name('getProyectos');
    Route::get('proyecto/getTerminados','ProyectoController@getTerminados')->name('getProyectosTerminados');
    Route::get('proyecto/getProceso','ProyectoController@getProceso')->name('getProyectosProceso');
    Route::get('proyecto/get/{id}','ProyectoController@getById')->name('getProyecto');
    Route::post('proyecto/create','ProyectoController@create')->name('createProyecto');
    Route::post('proyecto/update/{id}','ProyectoController@update')->name('updateProyecto');
    Route::get('proyecto/delete/{id}','ProyectoController@delete')->name('deleteProyecto');

    //Empresa
    Route::post('empresa/update','EmpresaController@update')->name('updateEmpresa');
    Route::get('empresa/get','EmpresaController@get')->name('getEmpresa');

    //Cotizacion cliente
    Route::get('cotizacion-cliente/get','CotizacionCliente\CotizacionClienteController@get')->name('getCotizacionesCliente');
    Route::get('cotizacion-cliente/get/{id}','CotizacionCliente\CotizacionClienteController@getById')->name('getCotizacionCliente');
    Route::post('cotizacion-cliente/create','CotizacionCliente\CotizacionClienteController@create')->name('createCotizacionCliente');
    Route::get('cotizacion-cliente/annul/{id}','CotizacionCliente\CotizacionClienteController@annul')->name('annulCotizacionCliente');
   
});