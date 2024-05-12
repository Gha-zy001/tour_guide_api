<?php

namespace App\Console\Commands;

use App\Models\Hotel;
use Illuminate\Console\Command;

class ProcessHotelsCSV extends Command
{
  protected $signature = 'csv:process-hotels';

  protected $description = 'Process places CSV file and save to database';

  public function handle()
  {
    // Read the CSV file
    $csvFile = storage_path('app/hotels/redsea.csv');
    $csvData = array_map('str_getcsv', file($csvFile));

    // Remove header row
    $header = array_shift($csvData);

    // Process each row
    foreach ($csvData as $row) {
      $state_id = $row[0];
      $name = $row[1];
      $price = $row[2];
      $address = 'Red-Sea';
      $rate = $row[3];
      // $row[1]
      $images = array_slice($row, 7); // Get images as an array

      // Create place record
      $hotel = Hotel::create([
        'state_id' => $state_id,
        'name' => $name,
        'price' => $price,
        'address' => $address,
        'rate' => $rate,
      ]);

      // Save images for the place
      foreach ($images as $image) {
        $hotel->images()->create(['data' => $image]);
      }
    }

    $this->info('Places processed and saved successfully.');
  }
}
