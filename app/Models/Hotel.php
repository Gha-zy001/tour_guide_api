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


  public function favoritedBy()
  {
    return $this->belongsToMany(User::class, 'favorites');
  }
  public function images()
  {
      return $this->hasMany(Image::class, 'hotel_id');
  }
}
