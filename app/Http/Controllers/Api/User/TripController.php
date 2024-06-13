<?php

namespace App\Http\Controllers\Api\User;

use App\Http\Controllers\Controller;
use App\Http\Resources\TripResource as TripResource;
use App\Models\Trip;
use App\Traits\ApiTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Cloudinary\Api\Upload\UploadApi;

class TripController extends Controller
{
  function getTrip(Request $request)
  {
    try {
      $all_trips = Trip::where('user_id', auth()->user()->id)
        ->get();
      $trips = TripResource::collection($all_trips);
      return ApiTrait::data(compact('trips'), '', 200);
    } catch (\Throwable $th) {
      echo $th->getMessage();
      return ApiTrait::errorMessage([], 'Something went wrong', 500);
    }
  }

  public function specificTrip(Request $request, $tripId)
  {

    $specificTrip = Trip::where('user_id', auth()->user()->id)
      ->where('id', $tripId);
    try {
      if ($specificTrip) {
        $tripById = new TripResource($specificTrip);
        return ApiTrait::data(compact('tripById'));
      }
    } catch (\Throwable $th) {
      return ApiTrait::errorMessage([], 'No trips Yet', 422);
    }
  }

  function createTrip(Request $request)
  {
    try {
      $rules = [
        'name' => 'required|string|max:255|min:1',
        'date' => 'required|date',
        'city' => 'required|string|max:255|min:1',
      ];

      $validation = Validator::make($request->all(), $rules);

      if ($validation->fails()) {
        return ApiTrait::errorMessage([$validation->messages()->all()], 'Invalid Inputs', 422);
      }

      Trip::create([
        'user_id' => auth()->user()->id,
        'name' => $request->name,
        'date' => $request->date,
        'city' => $request->city,
      ]);

      return ApiTrait::successMessage('Success', 200);
    } catch (\Throwable $th) {
      return ApiTrait::errorMessage([], 'Something went wrong', 500);
    }
  }


  public function uploadImages(Request $request, $tripId)
  {
    $config = "CLOUDINARY_URL=cloudinary://215749298241811:gxhrmBq4FeJQnJI2UZbiHwpVSdU@dkduz7amh";

    $request->validate([
      'images.*' => 'nullable|image|mimes:png,jpg,jpeg|max:2048',
    ]);
    $image_urls = [];
    $trip = Trip::findOrFail($tripId);
    $path = 'laravel-cloud/trips-image';
    $files = $request->file('images');
    if ($request->hasFile('images')) {
      foreach ($files as $file) {
        $file_name = time() . '.' . $file->getClientOriginalExtension();
        $fileName = pathinfo($file_name, PATHINFO_FILENAME);
        $publicId = date('Y-m-d_His') . '_' . $fileName;
        $upload = (new UploadApi($config))->upload(
          $file->getRealPath(),
          [
            "public_id" => $publicId,
            "folder" => $path
          ]
        );
        $image_urls[] = $upload['secure_url'];
      }
      foreach ($image_urls as $image_url) {
        $trip->images()->create([
          "trip_id" => $tripId,
          "data" => $image_url,
        ]);
      }
      return response()->json(['message' => 'Images uploaded successfully'], 200);
    } else {
      $imageName = 'null';
      $trip->images()->data = $imageName;
    }

    return response()->json(['message' => 'No images uploaded'], 400);
  }

  function updateTrip(Request $request, $id)
  {
    try {
      if (!is_numeric($id)) {
        return ApiTrait::errorMessage([], 'Invalid Trip id', 400);
      }

      $rules = [
        'name' => 'string|max:255|min:1',
        'date' => 'date',
        'city' => 'string|max:255|min:1',
      ];

      $validation = Validator::make($request->all(), $rules);

      if ($validation->fails()) {
        return ApiTrait::errorMessage([$validation->messages()->all()], 'Invalid Inputs', 422);
      }

      $trip = Trip::find($id);

      if (!$trip) {
        return ApiTrait::errorMessage([], 'No Trip exists', 404);
      }

      $trip->update($request->all());

      $updatedTrip = Trip::find($id);

      return new TripResource($updatedTrip);
    } catch (\Throwable $th) {
      return ApiTrait::errorMessage([], 'Something went wrong', 500);
    }
  }

  function deleteTrip($id)
  {
    try {
      if (!is_numeric($id)) {
        return ApiTrait::errorMessage([], 'Invalid Trip id', 400);
      }

      $trip = Trip::find($id);

      if (!$trip) {
        return ApiTrait::errorMessage([], 'No Trip found', 404);
      }

      $deletedTrip = $trip->delete();

      if (!$deletedTrip) {
        return ApiTrait::errorMessage([], 'Trip not deleted', 500);
      }
      return ApiTrait::successMessage('Trip deleted', 200);
    } catch (\Throwable $th) {
      return ApiTrait::errorMessage([], 'Something went wrong', 500);
    }
  }
}
