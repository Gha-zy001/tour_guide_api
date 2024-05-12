<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Hotel extends Model
{
  use HasFactory;

  protected $fillable = [
    'name',
    'state_id',
    'hotel_id',
    'address',
    'price',
    'rate',
  ];

  protected $with = ['images'];

  public function favorites()
  {
    return $this->morphMany(Favorite::class, 'favoritable');
  }
  public function images()
  {
    return $this->hasMany(hotel_image::class, 'hotel_id');
  }

  public function reviews()
  {
    return $this->morphMany(Review::class, 'reviewable');
  }

  public function state()
  {
    return $this->belongsTo(State::class, 'state_id');
  }
}
