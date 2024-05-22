<?php

namespace App\Http\Controllers\Api\User;

use App\Http\Controllers\Controller;
use App\Models\Place;
use App\Traits\ApiTrait;
use App\Http\Resources\PlaceResource;
use App\Models\Hotel;
use App\Models\User;
use Illuminate\Support\Facades\Auth;

class RecommendationController extends Controller
{
  public function recommendPlaces()
  {
    try {
      $recommendHotels = Hotel::where('rate' , );
      $user = User::find(Auth::user()->id);
      $favoritePlaces = $user->favorites()
        ->where('favoritable_type', Place::class)
        ->get();

      if ($favoritePlaces->isNotEmpty()) {
        $latestFavoritePlace = $favoritePlaces->last()->favoritable;
        $state = $latestFavoritePlace->state;

        $recommendations = Place::where('state_id', $state->id)
          ->whereNotIn('id', $favoritePlaces->pluck('favoritable_id')->toArray())
          ->limit(10)
          ->get();
        $recommendedData = PlaceResource::collection($recommendations);

        return ApiTrait::data(compact('recommendedData'), '', 200);
      } else {
        return ApiTrait::data(compact('places'), '', 200);
      }
    } catch (\Throwable $th) {
      return ApiTrait::errorMessage([], '', 500);
    }
  }
}
