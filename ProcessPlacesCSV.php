<?php

use Illuminate\Console\Command;
use App\Models\Place;

class ProcessPlacesCSVs extends Command
{
  protected $signature = 'csv:process-places';

  protected $description = 'Process places CSV file and save to database';

  public function handle()
  {
    // Read the CSV file
    $csvFile = storage_path('app/red-sea.csv');
    $csvData = array_map('str_getcsv', file($csvFile));

    // Remove header row
    $header = array_shift($csvData);

    // Process each row
    foreach ($csvData as $row) {
      $state_id = $row[0];
      $name = $row[1];
      $description = $row[2];
      $address = 'Aswan';
      // $row[1]
      $images = array_slice($row, 3); // Get images as an array

      // Create place record
      $place = Place::create([
        'state_id' =>$state_id,
        'name' => $name,
        'description' => $description,
        'address' => $address,
      ]);

      // Save images for the place
      foreach ($images as $image) {
        $place->images()->create(['data' => $image]);
      }
    }

    $this->info('Places processed and saved successfully.');
  }
}
