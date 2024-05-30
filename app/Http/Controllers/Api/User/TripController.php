<?php

namespace App\Http\Controllers\Api\User;

use App\Http\Controllers\Controller;
use App\Http\Resources\TripResource as TripResource;
use App\Models\Trip;
use App\Traits\ApiTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

use function PHPUnit\Framework\returnSelf;

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

  function createTrip(Request $request)
  {
    try {
      $rules = [
        'name' => 'required|string|max:255|min:1',
        'date' => 'required|date',
        'city' => 'required|string|max:255|min:1',
        'images.*' => 'required|mimes:jpg,jpeg,png,bmp|max:20000',
      ];

      $validation = Validator::make($request->all(), $rules);

      if ($validation->fails()) {
        return ApiTrait::errorMessage([$validation->messages()->all()], 'Invalid Inputs', 422);
      }

      $trip = Trip::create([
        'user_id' => auth()->user()->id,
        'name' => $request->name,
        'date' => $request->date,
        'city' => $request->city,
      ]);
      if ($request->hasFile('images.*')) {
        $files = $request->file('images.*');

        foreach ($files as $file) {
          $extension = $file->getClientOriginalExtension();
          if (in_array($extension, ['jpg', 'jpeg', 'png', 'bmp'])) {
            $path = $file->store('public/images');

            // Store image path into db
            $trip->images()->create([
              'data' => $path,
            ]);

          }
        }
      }
      return ApiTrait::successMessage('Success', 200);
    } catch (\Throwable $th) {
      return ApiTrait::errorMessage([], 'Something went wrong', 500);
    }
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

  public function store(Request $request, $tripId)
  {
    $request->validate([
      'images' => 'required|mimes:jpg,jpeg,png,bmp|max:20000'
    ]);
    if (!$request->hasFile('images')) {
      return response()->json(['upload_file_not_found'], 400);
    }
    $files = $request->file('fileName');
    $trip = Trip::findOrFail($tripId);

    if ($request->hasFile('images')) {
      $files = $request->file('images');

      foreach ($files as $file) {
        $extension = $file->getClientOriginalExtension();
        if (in_array($extension, ['jpg', 'jpeg', 'png', 'bmp'])) {
          $path = $file->store('public/images');

          // Store image path into db
          $trip->images()->create([
            'data' => $path,
          ]);
        } else {
          return response()->json(['invalid_file_format'], 422);
        }
      }
    }
  }
}
