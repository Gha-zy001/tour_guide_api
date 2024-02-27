<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Review extends Model
{
  use HasFactory;
  protected $fillable = [
    'place_id',
    'hotel_id',
    'user_id',
    'rating',
    'comment',
  ];

  public function place()
  {
    return $this->belongsTo(Place::class,'place_id');
  }

  public function hotel()
  {
    return $this->belongsTo(Hotel::class, 'hotel_id');
  }

  public function user()
  {
    return $this->belongsTo(User::class, 'user_id');
  }
}
