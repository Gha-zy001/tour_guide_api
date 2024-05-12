<?php

namespace App\Http\Controllers\Api\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Place;
use App\Traits\ApiTrait;
use App\Http\Resources\PlaceResource;
use App\Models\User;
use Illuminate\Support\Facades\Auth;

class RecommendationController extends Controller
{
  public function recommendPlaces()
  {
    try {
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
      }
    } catch (\Throwable $th) {
      return ApiTrait::errorMessage([], '', 500);
    }
  }
}
