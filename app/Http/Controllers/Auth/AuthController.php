<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Http\Requests\LoginUserRequest;
use App\Http\Requests\UserData;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Traits\ApiTrait;
use Illuminate\Support\Facades\Auth;

use function PHPUnit\Framework\returnSelf;

class AuthController extends Controller
{
    public function login(LoginUserRequest $request)
    {
        $request->validated($request->all());
        $user = User::where('email', $request->email)->first();
        if (!$user || !Hash::check($request->password, $user->password)) {
            return ApiTrait::errorMessage([], 'Credentials do not match', 401);
        }

        return ApiTrait::data([
            'user' => $user,
            'token' => $user
                ->createToken('Api Token of ' . $user->name)
                ->plainTextToken
        ], 200);
    }

    public function register(UserData $request)
    {
        $request->validated($request->all());
        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);

        return ApiTrait::data([
            'user' => $user,
            'token' => $user
                ->createToken('Api Token of' . $user->name)
                ->plainTextToken
        ], "Done", 200);
    }

    public function logout(LoginUserRequest $request)
    {
        $user = User::where('email', $request->email)
            ->first();
        if ($user) {
            $user->tokens()->delete();
        }

        return ApiTrait::successMessage(
            "You have successfully have been loged out and your token has been deleted",
            200
        );
    }
}
