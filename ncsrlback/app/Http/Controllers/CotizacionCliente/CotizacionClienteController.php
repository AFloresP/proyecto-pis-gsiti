<?php

namespace App\Http\Controllers\CotizacionCliente;

use DateTime;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use App\Http\Controllers\LogsController;
use Symfony\Component\HttpFoundation\Response;
use App\Models\CotizacionCliente\CotizacionCliente;
use App\Models\CotizacionCliente\CotizacionClienteDetalle;
use App\Models\Empresa\Empresa;
use Illuminate\Support\Facades\Storage;
use App\Http\Requests\Clientes\Cliente\ClienteRequest as ClienteRequest;
use App\Http\Requests\Clientes\Cliente\ClienteContactoDireccionRequest as ClienteContactoDireccionRequest;

/**
 * @group CotizacionCliente
 * APIs para cotizaciones de clientes
 */
class CotizacionClienteController extends Controller
{   
    /**
     * Retornar cotizaciones
     * 
     * Retorna todos las cotizaciones activas y anuladas
     * 
     * 
     * @response {
     *      "data" : [
     *          {
     *              "solcli_id": 0,
     *              "solcli_cod": "string",
     *              "solcli_fec": "date",
     *              "solcli_proy_nom": "string",
     *              "solcli_cli_nom": "string",
     *              "solcli_cli_dir": "string",
     *              "solcli_cli_con": "string",
     *              "est_reg": "string"
     *          }
     *      ],
     *      "size":0
     * }
     */
    public function get()
    {
        try {
            $cotizaciones = DB::table('solicitud_cotizacion_cliente')
                                    ->select(
                                        'solcli_id',
                                        'solcli_cod',
                                        'solcli_fec',
                                        'solcli_proy_nom',
                                        'solcli_cli_nom',
                                        'solcli_cli_dir',
                                        'solcli_cli_con',
                                        'est_reg',)->orderBy('solcli_id', 'desc')->get();
        } catch (Exception $e) {
            return response()->json([
                'error' => 'ocurrio un error en el servidor',
                'desc' => $e
            ], 500);
        }
        
        return response()->json([
            'data' => $cotizaciones,
            'size' => count($cotizaciones)
        ], 200, [], JSON_NUMERIC_CHECK);
    }

    /**
     * Retornar cotizacion
     * 
     * Retorna cotizacion por Id
     * 
     * @urlParam  id required El ID de la cotizacion.
     * 
     * @response {
     *      "cotizacion": {
     *          "solcli_id": 0,
     *          "solcli_cod": "string",
     *          "solcli_fec": "string",
     *          "id_proy": 0,
     *          "solcli_proy_nom": "string",
     *          "solcli_proy_cod": "string",
     *          "id_cli": 0,
     *          "solcli_cli_nom": "string",
     *          "solcli_cli_numdoc": "string",
     *          "solcli_cli_tipdoc": "algo",
     *          "solcli_cli_dir": "string",
     *          "solcli_cli_con": "string",
     *          "id_col": 0,
     *          "solcli_col_nom": "string",
     *          "est_reg": "string",
     *          "cotizacion_detalle": [
     *              {
     *                  "solclidet_id": 0,
     *                  "solcli_id": 0,
     *                  "solclidet_prod_serv": 0,
     *                  "solclidet_des": "string",
     *                  "id_prod": 0,
     *                  "solclidet_prod_can": 0,
     *                  "solclidet_prod_codint": "string",
     *                  "solclidet_prod_numpar": "string",
     *                  "solclidet_prod_fabr": "string",
     *                  "solclidet_prod_marc": "string",
     *                  "solclidet_prod_unimed": "string",
     *                  "solclidet_prod_stock": 0
     *              }
     *          ]
     *      },
     *      "logo": "string",
     *      "extension": "string"
     * }
     */
    public function getById($id)
    {        
        try {
            $cotizacion = CotizacionCliente::with(['cotizacion_detalle'] )->find($id);
        } catch (Exception $e) {
            return response()->json([
                'error' => 'ocurrio un error en el servidor',
                'desc' => $e
            ], 500);
        }
        
        if($cotizacion) {
            $empresa = Empresa::find(1);
            $b64_file = null;
            if($empresa && $empresa->img_emp) {
                $b64_file = base64_encode(Storage::disk('local')->get($empresa->img_emp));
                return response()->json([
                    'cotizacion' => $cotizacion,
                    'logo' => $b64_file,
                    'extension' => $empresa->imgext_emp
                ], 200, [], JSON_NUMERIC_CHECK);
            } else {
                return response()->json([
                    'cotizacion' => $cotizacion,
                    'logo' => null,
                    'extension' => null
                ], 200, [], JSON_NUMERIC_CHECK);
            }
            
        } else {
            return response()->json([
                'resp' => 'No se encontro la cotizacion'
            ], 500);
        }

    }

    /**
     * Crear Cotizacion Cliente
     * 
     * Crea una Cotizacion de cliente
     * 
     * @bodyParam  id_cli int required Id del cliente.
     * @bodyParam  solcli_cli_nom string Nombre del cliente.
     * @bodyParam  solcli_cli_numdoc string Numero de documento del cliente.
     * @bodyParam  solcli_cli_tipdoc string Tipo de documento del cliente.
     * @bodyParam  solcli_cli_dir string Direccion del cliente.
     * @bodyParam  solcli_cli_con string Contacto del cliente.
     * @bodyParam  id_col int Id del colaborador.
     * @bodyParam  solcli_col_nom string Nombre del colaborador.
     * @bodyParam  cotizacion_detalle array required Ejemplo: [{"solcli_id": 0,"solclidet_prod_serv": 1,"solclidet_des":"string","id_prod":0,"solclidet_prod_can":0,"solclidet_prod_codint":"string","solclidet_prod_numpar": "string","solclidet_prod_fabr": "string","solclidet_prod_marc": "string","solclidet_prod_unimed": "string","solclidet_prod_stock": 0}]
     * 
     * @response {
     *    "resp": "cotizacion creada"
     * }
     */
    public function create(Request $request)
    {   

        DB::beginTransaction();

        try {
            $cotizacionCliente = CotizacionCliente::create([
                'solcli_cod' => $this->next_cod(),
                'solcli_fec' => new DateTime(),
                'id_proy' => $request->input('id_proy'),
                'solcli_proy_nom' => $request->input('solcli_proy_nom'),
                'solcli_proy_cod' => $request->input('solcli_proy_cod'),
                'id_cli' => $request->input('id_cli'),
                'solcli_cli_nom' => $request->input('solcli_cli_nom'),
                'solcli_cli_numdoc' => $request->input('solcli_cli_numdoc'),
                'solcli_cli_tipdoc' => $request->input('solcli_cli_tipdoc'),
                'solcli_cli_dir' => $request->input('solcli_cli_dir'),
                'solcli_cli_con' => $request->input('solcli_cli_con'),
                'id_col' => $request->input('id_col'),
                'solcli_col_nom' => $request->input('solcli_col_nom'),
                'est_reg' => 'A'
            ]);

            $detalles = $request->input('cotizacion_detalle');
                
            if($detalles) {
                foreach($detalles as $detalle) {
                    $cotizacionDetalle = CotizacionClienteDetalle::create([
                        'solcli_id' => $cotizacionCliente->solcli_id,
                        'solclidet_prod_serv' => $detalle['solclidet_prod_serv'],
                        'solclidet_des' => $detalle['solclidet_des'],
                        'id_prod' => $detalle['id_prod'],
                        'solclidet_prod_can' => $detalle['solclidet_prod_can'],
                        'solclidet_prod_codint' => $detalle['solclidet_prod_codint'],
                        'solclidet_prod_numpar' => $detalle['solclidet_prod_numpar'],
                        'solclidet_prod_fabr' => $detalle['solclidet_prod_fabr'],
                        'solclidet_prod_marc' => $detalle['solclidet_prod_marc'],
                        'solclidet_prod_unimed' => $detalle['solclidet_prod_unimed'],
                        'solclidet_prod_stock' => $detalle['solclidet_prod_stock']
                    ]);
                }
            }
                
            DB::commit();
            // all good
        } catch (Exception $e) {
            
            DB::rollback();
            // something went wrong
            return response()->json([
                        'error' => 'ocurrio un error en el servidor',
                        'desc' => $e
                    ], 500);
        }

        // //Logs
        // $descripcion = "Se creo el cliente con ID: ".$cliente->id_cli;
        // $logs = new LogsController();
        // $logs->create_log($descripcion, 1);
        // ///////
        return response()->json([
            'resp' => 'Cotizacion creada'
        ], 200, [], JSON_NUMERIC_CHECK);

    }

    /**
     * Anular cotizacion
     * 
     * Anula una cotizacion
     *
     * @urlParam  id required El ID de la cotizacion.
     * 
     * @response {
     *    "resp": "Cotizacion anulada"
     * }
     */
    public function annul($id) {
        try {
            $cotizacion = CotizacionCliente::find($id);
            $cotizacion->fill(array('est_reg' => 'AN'))->save();
        } catch (Exception $e) {
            return response()->json([
                'error' => 'ocurrio un error en el servidor',
                'desc' => $e
            ], 500);
        }

        // //Logs
        // $descripcion = "Se elimino el usuario con ID: ".$user->id_col;
        // $logs = new LogsController();
        // $logs->create_log($descripcion, 3);
        // ///////
        return response()->json([
            'resp' => 'Cotizacion Anulada'
        ], 200, [], JSON_NUMERIC_CHECK);
    }

    public function next_cod()
    {
        $cod_cotizacion_max = DB::table('solicitud_cotizacion_cliente')->whereYear('solcli_fec', '=', date("Y"))->max('solcli_cod');
        if($cod_cotizacion_max == null) $cod_cotizacion_max = "#0001-NTWC-".date("Y");
        else {
            $numberStr = substr($cod_cotizacion_max,1,5);
            $max = intval($numberStr) + 1;
            $cod_cotizacion_max = "#".sprintf("%'.04d", $max)."-NTWC-".date("Y");
        }
        return $cod_cotizacion_max;
    }

}