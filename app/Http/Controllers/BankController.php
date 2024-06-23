<?php

namespace App\Http\Controllers;

use App\Http\Resources\BankResource;
use App\Models\Bank;
use App\Models\State;
use Illuminate\Http\Request;
use App\Traits\ApiTrait;
use Illuminate\Support\Facades\Cache;

class BankController extends Controller
{
  public function getBanks()
  {
    try {
      $Banks = Bank::all();
      $Banks = Bank::paginate(10);
      if ($Banks->count() > 0) {
        $allBanks = BankResource::collection($Banks);
        return ApiTrait::data(compact('allBanks'), 'Banks Fetched Successfully', 200);
      }
      return ApiTrait::errorMessage([], 'No Banks Yet', 404);
    } catch (\Throwable $th) {
      return ApiTrait::errorMessage([], 'Something went wrong', 500);
    }
  }

  public function getBank($id)
  {
    if (!is_numeric($id)) {
      return ApiTrait::errorMessage([], 'Invalid Bank Id', 400);
    }
    try {
      $Bank = Bank::find($id);
      if (!$Bank) {
        return ApiTrait::errorMessage([], 'Bank Not Found', 404);
      }
      return BankResource::collection([$Bank]);
    } catch (\Throwable $th) {
      return ApiTrait::errorMessage([], 'Something went wrong', 500);
    }
  }

  public function getBanksByState($stateName)
  {
    try {
      $cacheKey = 'banks.state.' . $stateName;

      $banks = Cache::rememberForever($cacheKey, function () use ($stateName) {
        $state = State::where('name', $stateName)->first();
        if (!$state) {
          return response()->json(['error' => 'State not found'], 404);
        }

        $banks = Bank::where('state_id', $state->id)
          ->get(['id', 'state_id', 'name', 'rate', 'location']);

        $banksArray = $banks->map(function ($banks) use ($stateName) {

          return [
            'id' => $banks->id,
            'state_id' => $banks->state_id,
            'name' => $banks->name,
            'rate' => $banks->rate,
            'location' => $banks->location,
            'address' => $stateName,
          ];
        })->toArray();

        return $banksArray;
      });
      $banks = Cache::get('banks.state.' . $stateName);
      return compact('banks');
      // $state = State::where('name', $stateName)->first();
      // $stateId = $state->id;
      // if (!$state) {
      //   return response()->json(['error' => 'State not found'], 404);
      // }

      // $Banks = Bank::where('state_id', $stateId)->paginate(10);
      // $Banks = BankResource::collection($Banks);
      // return ApiTrait::data(compact('Banks'), '', 200);
    } catch (\Throwable $th) {
      return ApiTrait::errorMessage([], '', 422);
    }
  }
}
