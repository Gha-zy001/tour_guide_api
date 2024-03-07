<?php

namespace App\Http\Controllers\Api\User;

use App\Http\Controllers\Controller;
use App\Http\Requests\ReviewRequest;
use Illuminate\Http\Request;
use App\Models\Place;
use App\Models\Hotel;
use App\Models\Review;
use App\Traits\ApiTrait;

class ReviewController extends Controller
{
  /**
   * Display a listing of the resource.
   */

  public function createReview(ReviewRequest $request, $reviewable_type, $reviewable_id)
  {
    try {
      $request->validated($request->all());

      if ($reviewable_type === 'place') {
        $reviewable = Place::findOrFail($reviewable_id);
      } elseif ($reviewable_type === 'hotel') {
        $reviewable = Hotel::findOrFail($reviewable_id);
      } else {
        return ApiTrait::errorMessage([], 'Invalid reviewable type', 422);
      }

      Review::create([
        'user_id' => auth()->user()->id,
        'star_rating' => $request->star_rating,
        'comments' => $request->comments,
        'reviewable_id' => $reviewable_id,
        'reviewable_type' => get_class($reviewable)
      ]);
      return ApiTrait::successMessage('Your review has been submitted Successfully', 200);
    } catch (\Throwable $th) {
      return ApiTrait::errorMessage([], 'Fail', 422);
    }
  }

  public function getPlaceReviews($place_id)
  {
    try {
      $place = Place::findOrFail($place_id);
      $reviews = $place->reviews();
      return ApiTrait::data($reviews, 200);
    } catch (\Throwable $th) {
      return ApiTrait::errorMessage([], 'Fail', 422);
    }
  }
}
