<?php

namespace App\Http\Controllers\Api\User;

use App\Http\Controllers\Controller;
use App\Http\Requests\UserData;
use App\Http\Resources\ProfileResource;
use App\Models\User;
use Illuminate\Http\Request;
use App\Traits\ApiTrait;
use Illuminate\Support\Facades\Auth;
use PhpParser\Node\Stmt\TryCatch;

class ProfileUpdateController extends Controller
{
  public function editProfile(UserData $request)
  {
    try {
      $user = $request->user();
      $request->validated($request->all());
      if ($request->hasFile('image')) {
        $imageName = time() . '.' . $request->file('image')->getClientOriginalExtension();
        $request->file('image')->move(public_path('storage/images'), $imageName);
        $img_url = asset('storage/images/' . $imageName);
        $user->image = $img_url;
        $user->save();
      } else {
        $imageName = 'null';
      }
      $user->update($request->all());
      return ApiTrait::successMessage('Success', 200);
    } catch (\Throwable $th) {
      return ApiTrait::errorMessage([], 'Fail', 422);
    }
  }

  public function show(Request $request)
  {
    $user = $request->user();
    $userData = [
      'name' => $user->name,
      'email' => $user->email,
      'avatar' => $user->image,
    ];
    return $userData;
  }
}
