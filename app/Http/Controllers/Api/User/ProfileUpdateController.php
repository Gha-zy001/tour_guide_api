<?php

namespace App\Http\Controllers\Api\User;

use App\Http\Controllers\Controller;
use App\Http\Requests\UserData;
use App\Http\Resources\ProfileResource;
use App\Models\User;
use Illuminate\Http\Request;
use App\Traits\ApiTrait;
use Illuminate\Validation\Rules\Password;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Yaza\LaravelGoogleDriveStorage\Gdrive;

class ProfileUpdateController extends Controller
{
  public function editProfile(UserData $request)
  {
    try {
      $user = $request->user();
      $request->validated($request->all());
      $imageName = time() . '.' . $request->file('image')->getClientOriginalExtension();
      Gdrive::put("project/{$imageName}", $request->file('image'));
      return response('Image Uploaded!', 200);
      if ($request->hasFile('image')) {
        Gdrive::put("{$imageName}", $request->file('image'));
        // $url = Storage::url($path);
        // return $url;
        // $user->image = $url;
        // $user->save();
        // $request->file('image')->move(public_path('storage/images'), $imageName);
        // $img_url = asset('storage/images/' . $imageName);
        // $user->image = $imageName;
      } else {
        // $imageName = 'null';
        // $user->image = $imageName;
        // $user->save();
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
    $image = $user->image_url;
    $userData = [
      'name' => $user->name,
      'email' => $user->email,
      'avatar' => $user->image,
    ];
    return $userData;
  }
}
