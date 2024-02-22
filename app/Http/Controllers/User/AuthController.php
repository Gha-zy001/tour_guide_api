<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class AuthController extends Controller
{
    public function login(){
      return response()->json("hi");
    }

    public function register(){
      return response()->json('holla');
    }

    public function logout(){
      return response()->json('holla');
    }
}
