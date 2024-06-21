<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
  /**
   * Run the migrations.
   */
  public function up(): void
  {
    Schema::create('resturant_images', function (Blueprint $table) {
      $table->id();
      $table->foreignId('resturant_id')->nullable()->constrained('resturaunts')->onDelete('cascade');
      $table->longText('data');
      $table->timestamps();
    });
  }

  /**
   * Reverse the migrations.
   */
  public function down(): void
  {
    Schema::dropIfExists('resturant_images');
  }
};
