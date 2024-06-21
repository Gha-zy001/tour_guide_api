<?php

namespace App\Http\Resources;

use App\Models\Hotel;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class HotelResource extends JsonResource
{
  /**
   * Transform the resource into an array.
   *
   * @return array<string, mixed>
   */
  public function toArray(Request $request): array
  {
    $isFavorite = $request->user()
      ? $request->user()->favorites()->where('favorable_id', $this->id)->where('favorable_type', Hotel::class)->exists()
      : false;
    return [
      'id' => $this->id,
      'name' => $this->name,
      'address' => $this->address,
      'img_url' => $this->images->pluck('data'),
      'price' => $this->price,
      'status' => $isFavorite,
      'rate' => $this->rate,
    ];
  }
}
