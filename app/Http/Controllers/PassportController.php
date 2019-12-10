<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\OAuthClient;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;


class PassportController extends Controller
{
    public function register(Request $request)
    {
        DB::beginTransaction();

        try {
            $validator = Validator::make($request->all(),[
                'name' => 'required|string',
                'email' => 'required|string|email|unique:users',
                'password' => 'required|string|confirmed'
            ]);

            if ($validator->fails()) {
                return Redirect::back()
                    ->withErrors($validator)
                    ->withInput();
            }
            else{
                try {
                    $user_save = User::create([
                        'name' => $request->name,
                        'email' => $request->email,
                        'password' => bcrypt($request->password)
                    ]);
                }
                catch(\Exception $e){
                    DB::rollback();
                    $message = $e->getMessage();
                    return response()->json(['error' => 1, 'message' => $message]);
                }
            }
            $insertedId = $user_save->id;
            $secret = Str::random(40);
            try {
                $oauth_clients = OAuthClient::create([
                    "user_id" => $insertedId,
                    "secret" => $secret,
                    "name" => "Password Grant",
                    "revoked" => 0,
                    "password_client" => 1,
                    "personal_access_client" => 0,
                    "redirect" => "http://localhost",
                ]);
            }
            catch(\Exception $e){
                DB::rollback();
                $message = $e->getMessage();
                return response()->json(['error' => 1, 'message' => $message]);
            }
            DB::commit();
            return response()->json([
                'message' => 'Successfully created user!',
                'client_secret' => $secret,
                'client_id' => $oauth_clients->id
            ], 201);
        } catch (\Exception $e) {
            DB::rollback();
            // something went wrong
            $message = $e->getMessage();
            return response()->json(['error' => 1, 'message' => $message]);
        }
    }
}
