<?php

namespace Database\Seeders;

use App\Models\Guider;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class GuiderSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
      Guider::factory()->count(50)->create();

    }
}
