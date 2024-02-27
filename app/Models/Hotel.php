<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Hotel extends Model
{
  use HasFactory;

  protected $fillable = [
    'name',
    'address',
    'price',
  ];

  public function reviews()
  {
    return $this->hasMany(Review::class);
  }

  public function favoritedBy()
  {
    return $this->belongsToMany(User::class, 'favorites');
  }

  public function pictures()
  {
    return $this->hasMany(Picture::class);
  }
}
