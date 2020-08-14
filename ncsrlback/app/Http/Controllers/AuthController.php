<?php   
namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use JWTAuth;
use Tymon\JWTAuth\Exceptions\JWTException;

/**
 * @group Autenticacion
 * APIs para autenticarse en el sistema
 */
class AuthController extends Controller
{
    /**
     * Login
     * 
     * Login del sistema
     * 
     * @bodyParam  email string required Email del usuario
     * @bodyParam  password string required Contraseña del usuario
     * 
     * @response {
     *    "token": "string",
     *    "user": {
     *      "id_col": 0,
     *      "nom_col": "string",
     *      "ape_col": "string"
     *    }
     * }
     */
    public function authenticate(Request $request)
    {
        $user = DB::table('users')->where('email', $request->input('email'))->first();

        if(!$user) {
            return response()->json(['error' => 'credenciales no validas'], 402);
        }

        if($user->est_reg != "A" && $user->est_reg != "SU") {
            return response()->json(['error' => 'credenciales no validas'], 402);
        }

        $credentials = $request->only('email', 'password');
        try {
            if (! $token = JWTAuth::attempt($credentials)) {
                return response()->json(['error' => 'credenciales no validas'], 402);
            }
        } catch (JWTException $e) {
            return response()->json(['error' => 'no se pudo crear el token'], 500);
        }
        $response = compact('token');
        $response['user'] = Auth::user();
        return $response;
        // return response()->json(compact('token'));
    }
    public function getAuthenticatedUser()
    {
        try {
            if (!$user = JWTAuth::parseToken()->authenticate()) {
                    return response()->json(['usuario no encontrado'], 404);
            }
            } catch (Tymon\JWTAuth\Exceptions\TokenExpiredException $e) {
                    return response()->json(['token expirado'], $e->getStatusCode());
            } catch (Tymon\JWTAuth\Exceptions\TokenInvalidException $e) {
                    return response()->json(['token invalido'], $e->getStatusCode());
            } catch (Tymon\JWTAuth\Exceptions\JWTException $e) {
                    return response()->json(['token ausente'], $e->getStatusCode());
            }
            return response()->json(compact('user'));
    }

    public function register(Request $request)
        {
            $validator = Validator::make($request->all(), [
                'email' => 'required|string|email',
                'nom_col' => 'required',
                'ape_col' => 'required',
                'num_doc_col' => 'required',
            ]);

            $defaultPassword = "12345678";

            if($validator->fails()){
                    return response()->json($validator->errors()->toJson(), 400);
            }

            $user = User::create([
                'nom_col' => $request->input('nom_col'),
                'ape_col' => $request->input('ape_col'),
                'email' => $request->get('email'),
                'password' => $request->input('pas_col') ? Hash::make($request->input('password')) : Hash::make($defaultPassword),
                'num_doc_col' => $request->input('num_doc_col'),
                'id_tipdoc' => $request->input('id_tipdoc'),
                'id_car' => $request->input('id_car'),
                'est_reg' => 'A',
            ]);

            $token = JWTAuth::fromUser($user);

            return response()->json(compact('user','token'),201);
        }
}