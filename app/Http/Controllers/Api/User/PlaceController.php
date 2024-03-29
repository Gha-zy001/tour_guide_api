<?php

namespace App\Http\Controllers\Api\User;

use App\Http\Controllers\Controller;
use App\Http\Resources\PlaceResource;
use Illuminate\Http\Request;
use App\Models\Place;
use App\Traits\ApiTrait;

class PlaceController extends Controller
{
  /**
   * Display a listing of the resource.
   */
  public function index()
  {
    try {
      $places = Place::with('images')->get();
      if (count($places) > 0) {
        return PlaceResource::collection($places);
      }
    } catch (\Throwable $th) {
      return ApiTrait::errorMessage([], 'No Places Yet', 422);
    }
  }

  /**
   * Display the specified resource.
   */
  public function show($place)
  {
    $specificPlace = Place::find($place);
    try {
      if ($specificPlace) {
        return new PlaceResource($specificPlace);
      }
    } catch (\Throwable $th) {
      return ApiTrait::errorMessage([], 'No Places Yet', 422);
    }
  }
}
