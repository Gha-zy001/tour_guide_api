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
    Schema::create('hotels', function (Blueprint $table) {
      $table->id();
      $table->foreignId('state_id')->constrained('states')->onDelete('cascade');
      $table->string('name');
      $table->string('address');
      $table->float('price');
      $table->timestamps();
    });
  }

  /**
   * Reverse the migrations.
   */
  public function down(): void
  {
    Schema::dropIfExists('hotels');
  }
};
