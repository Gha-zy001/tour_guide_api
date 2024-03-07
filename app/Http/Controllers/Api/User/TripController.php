<?php

namespace App\Http\Controllers\Api\User;

use App\Http\Controllers\Controller;
use App\Http\Resources\TripResource as TripResource;
use App\Models\Trip;
use App\Traits\ApiTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;


class TripController extends Controller
{
    //
    function getTrip(Request $request, $id)
    {
        try {
            if (!is_numeric($id)) {
                return ApiTrait::errorMessage([], 'Invalid Trip id', 400);
            }

            $trip = Trip::find($id);
            if (!$trip) {
                return ApiTrait::errorMessage([], 'No Trip found', 404);
            }
            return TripResource::collection([$trip]);

        } catch (\Throwable $th) {
            echo $th->getMessage();
            return ApiTrait::errorMessage([], 'Something went wrong', 500);
        }

    }

    function getTrips($userId)
    {
        try {
            if (!is_numeric($userId)) {
                return ApiTrait::errorMessage([], 'Invalid userId', 400);
            }

            $trips = Trip::where('user_id', $userId)->get();

            if ($trips->isEmpty()) {
                return ApiTrait::errorMessage([], 'No Trips found', 404);
            }

            return TripResource::collection($trips);

        } catch (\Throwable $th) {
            return ApiTrait::errorMessage([], 'Something went wrong', 500);
        }
    }

    function createTrip(Request $request)
    {
        try {
            $rules = [
                'user_id' => 'required|numeric',
                'name' => 'required|string|max:255|min:1',
                'date' => 'required|date',
                'city' => 'required|string|max:255|min:1',
            ];
            // validate request
            $validation = Validator::make($request->all(), $rules);

            if ($validation->fails()) {
                return ApiTrait::errorMessage([$validation->messages()->all()], 'Invalid Inputs', 422);
            }
            $newTrip = Trip::create($request->all());

            if (!$newTrip) {
                return ApiTrait::errorMessage([], 'Trip not created', 500);
            }

            return TripResource::collection([$newTrip]);
        } catch (\Throwable $th) {
            echo $th->getMessage();
            return ApiTrait::errorMessage([], 'Something went wrong', 500);
        }
    }

    function updateTrip(Request $request, $id)
    {
        try {
            if (!is_numeric($id)) {
                return ApiTrait::errorMessage([], 'Invalid Trip id', 400);
            }

            $rules = [
                // name should be string, length 1-255
                'name' => 'string|max:255|min:1',
                'date' => 'date',
                'city' => 'string|max:255|min:1',
            ];

            $validation = Validator::make($request->all(), $rules);

            if ($validation->fails()) {
                return ApiTrait::errorMessage([$validation->messages()->all()], 'Invalid Inputs', 422);
            }

            $trip = Trip::find($id);

            if (!$trip) {
                return ApiTrait::errorMessage([], 'No Trip exists', 404);
            }

            $trip->update($request->all());

            $updatedTrip = Trip::find($id);

            return new TripResource($updatedTrip);

        } catch (\Throwable $th) {
            return ApiTrait::errorMessage([], 'Something went wrong', 500);
        }
    }

    function deleteTrip(Request $request, $id)
    {
        try {
            if (!is_numeric($id)) {
                return ApiTrait::errorMessage([], 'Invalid Trip id', 400);
            }

            $trip = Trip::find($id);

            if (!$trip) {
                return ApiTrait::errorMessage([], 'No Trip found', 404);
            }

            $deletedTrip = $trip->delete();

            if (!$deletedTrip) {
                return ApiTrait::errorMessage([], 'Trip not deleted', 500);
            }
            return ApiTrait::data([], 'Trip deleted', 204);
        } catch (\Throwable $th) {
            return ApiTrait::errorMessage([], 'Something went wrong', 500);
        }
    }
}
