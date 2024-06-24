<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\Hash;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Guider>
 */
class GuiderFactory extends Factory
{
  /**
   * Define the model's default state.
   *
   * @return array<string, mixed>
   */
  public function definition(): array
  {
    return [
      'name' => $this->faker->name,
      'email' => $this->faker->unique()->safeEmail,
      'password' => Hash::make('password'),
      'phone_number' => $this->faker->phoneNumber,
      'national_id' => $this->faker->unique()->numerify('##########'),
      'is_verified' => $this->faker->boolean,
      'verification_code' => null,
      'description' => $this->faker->paragraph,
    ];
  }
}
