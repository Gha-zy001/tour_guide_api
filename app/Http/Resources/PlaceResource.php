<?php

namespace App\Http\Resources;

use App\Models\Picture;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;
use App\Models\Place;

class PlaceResource extends JsonResource
{
  /**
   * Transform the resource into an array.
   *
   * @return array<string, mixed>
   */
  public function toArray(Request $request): array
  {
    $isFavorite = $request->user()
      ? $request->user()->favorites()->where('favoritable_id', $this->id)->where('favoritable_type', Place::class)->exists()
      : false;
    return [
      'id' => $this->id,
      'state_id' => $this->state->id,
      'name' => $this->name,
      'description' => $this->description,
      'address' => $this->address,
      'img_url' => $this->images->pluck('data'),
      'status' => $isFavorite,
      'average_rating' => $this->reviews->avg('star_rating'),
    ];
  }
}
