<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Hotel extends Model
{
  use HasFactory;

  protected $fillable = [
    'name',
    'hotel_id',
    'address',
    'price',
  ];


  public function favorites()
  {
    return $this->morphMany(Favorite::class, 'favoritable');
  }
  public function images()
  {
    return $this->hasMany(Image::class, 'hotel_id');
  }

  public function reviews()
  {
    return $this->morphMany(Review::class, 'reviewable');
  }
}
