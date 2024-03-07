<?php

namespace App\Http\Controllers\Api\User;

use App\Http\Controllers\Controller;
use App\Http\Requests\TripRequest;
use App\Models\Trip;
use Illuminate\Http\Request;
use App\Traits\ApiTrait;
use App\Http\Resources\TripResource;
use Illuminate\Support\Facades\Auth;
use App\Models\User;

class TripController extends Controller
{
  /**
   * Display a listing of the resource.
   */
  public function index()
  {
    try {
      $user = Auth::user();
      $trips = Trip::where('user_id', $user->id)->get();
      if (count($trips) > 0) {
        return TripResource::collection($trips);
      }
    } catch (\Throwable $th) {
      return ApiTrait::errorMessage([], 'No Trips Yet', 422);
    }
  }


  public function create(TripRequest $request)
  {

    try {
      $user = Auth::user();
      $request->validated($request->all());
      Trip::create([
        'user_id' => $user->id,
        'name' => $request->name,
        'date' => $request->date,
        'city' => $request->city,
      ]);
      return ApiTrait::successMessage('Trip added successfully.', 200);
    } catch (\Throwable $th) {
      return ApiTrait::errorMessage([], 'Fail', 422);
    }
  }


  /**
   * Update the specified resource in storage.
   */
  public function update(TripRequest $request, Trip $trip)
  {
    try {
      $tripID = Trip::findOrFail($trip);
      $request->validated();
      if (auth()->user()->id !== $trip->user_id) {
        return ApiTrait::errorMessage([], 'Unauthorized', 401);
      }
      $trip->update([
        'name' => $request->name,
        'date' => $request->date,
        'city' => $request->city,
      ]);
      // $user = Auth::user();

      return ApiTrait::successMessage('Trip updated successfully', 200);
    } catch (\Throwable $th) {
      return ApiTrait::errorMessage([], 'Fail', 422);
    }
  }

  // /**
  //  * Remove the specified resource from storage.
  //  */
  public function destroy(string $id)
  {
    //
  }
}
