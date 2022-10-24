<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\User;
use Auth;

class AuthController extends Controller
{
    public function register(Request $request){
        $request->validate([
            'username' => 'required|string',
            'email' => 'required|string|email|unique:users',
            'phone' => 'required|min:11|numeric',
            'password' => 'required|string|min:8'
        ]);

        $user = new User;
        $user->username=$request->username;
        $user->email=$request->email;
        $user->phone=$request->phone;
        $user->password=Hash::make($request->password);

        $user->save();

        return response()->json([
            'message' => 'User created successfully'
        ], 201);
    }

    public function login(Request $request){

        if(Auth::attempt(['email' => request('email'), 'password' => request('password')]) || Auth::attempt(['phone' => request('phone'), 'password' => request('password')]) || Auth::attempt(['username' => request('username'), 'password' => request('password')])){
            
            $user = $request->user();
            $tokenResult = $user->createToken('Personal Access Token');
            $token = $tokenResult->token;
    
            $token->save();
            return response()->json([
                'access_token' => $tokenResult->accessToken,
                'token_type' => 'Bearer',
                'expires_at' => ($tokenResult->token->expires_at)->toDateTimeString(),
                'message' => 'Login successfully'
            ]);
        }else{
            return response()->json([
                'message' => 'Invalid login credentials!!!'
            ], 401);
        }
       
    }

    public function logout(){
        auth()->logout();
        return response()->json([
            'message' => 'Successfully logged out'
        ]);
    }

    public function user(Request $request){
        return response()->json($request->user());
    }


}
