<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Laravel\Sanctum\HasApiTokens;
use Illuminate\Notifications\Notifiable;

class Guider extends Authenticatable
{
  use HasApiTokens, HasFactory, Notifiable;

  protected $fillable = [
    'name',
    'email',
    'password',
    'phone_number',
    'national_id',
    'is_verified',
    'verification_code',
    'description',
    'guider_id',
  ];

  /**
   * The attributes that should be hidden for arrays.
   *
   * @var array<int, string>
   */
  protected $hidden = [
    'password',
    'remember_token',
    'verification_code',
  ];

  /**
   * The attributes that should be cast.
   *
   * @var array<string, string>
   */
  protected $casts = [
    'email_verified_at' => 'datetime',
    'password' => 'hashed',
    'is_verified' => 'boolean',
  ];

  public function getNameAttribute($value)
  {
    return $this->is_verified ? $value . ' (Verified)' : $value;
  }
  public function contacts()
  {
    return $this->hasMany(Contact::class, 'guider_id');
  }
}
