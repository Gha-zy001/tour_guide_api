<?php

namespace App\Http\Resources;

use App\Models\Review;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ReviewResource extends JsonResource
{
  /**
   * Transform the resource into an array.
   *
   * @return array<string, mixed>
   */
  public function toArray(Request $request): array
  {
    return [
      'id' => $this->id,
      'user_name' => $this->user->name,
      'user_review' => $this->reviewable->reviews->map(function ($review) {
        return [
          'star_rating' => $review->star_rating,
          'comments' => $review->comments,
        ];
      }),

    ];
  }
}
