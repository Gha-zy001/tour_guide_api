<?php

namespace App\Http\Controllers\Api\User;

use App\Http\Controllers\Controller;
use App\Http\Resources\FavoriteResource;
use App\Models\Favorite;
use App\Models\Place;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Traits\ApiTrait;
use App\Models\Hotel;

class FavoriteController extends Controller
{
  /**
   * Display a listing of the resource.
   */
  public function addtoFavorites($favoritableType, $favoritableId)
  {
    try {

      if ($favoritableType === 'place') {
        $favoritable = Place::findOrFail($favoritableId);
      } elseif ($favoritableType === 'hotel') {
        $favoritable = Hotel::findOrFail($favoritableId);
      } else {
        return ApiTrait::errorMessage([], 'Invalid favoritable type', 422);
      }
      Favorite::create([
        'user_id' => auth()->user()->id,
        'favoritable_id' => $favoritableId,
        'favoritable_type' => get_class($favoritable),
      ]);
      return ApiTrait::successMessage('Successfully added to favorites', 200);
    } catch (\Throwable $th) {
      return ApiTrait::errorMessage([], 'Fail', 422);
    }
  }

  public function deleteFavorites($favoritableId)
  {
    try {
      Favorite::where('user_id', auth()->user()->id)
        ->where('favoritable_id', $favoritableId)
        ->delete();
      return ApiTrait::successMessage('Successfully deleted', 200);
    } catch (\Throwable $th) {
      return ApiTrait::errorMessage([], 'Fail', 422);
    }
  }

  public function getFavorites()
  {
    try {
      $result = Favorite::where('user_id', auth()->user()->id)
        ->get();
          return FavoriteResource::collection($result);
    } catch (\Throwable $th) {
      return ApiTrait::errorMessage([], 'There is no favorites yet', 422);
    }
  }
}
