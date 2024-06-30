<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
  use HasFactory;
  protected $fillable = [
    'name',
    'email',
    'message',
    'guider_id',
    'user_id',
    'is_approved',
  ];

  protected $casts = [
    'is_approved' => 'boolean',
  ];

  public function guider()
  {
    return $this->belongsTo(Guider::class);
  }

  public function user()
  {
    return $this->belongsTo(User::class);
  }
}
