<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Contact;
use App\Models\Guider;
use Illuminate\Support\Facades\Auth;

class ContactController extends Controller
{
  public function createContactRequest(Request $request, $guider_id)
  {
    $request->validate([
      'message' => 'required|string',
    ]);

    $user = $request->user();
    Contact::create([
      'name' => $user->name,
      'email' => $user->email,
      'message' => $request->message,
      'guider_id' => $guider_id,
      'user_id' => $user->id,
    ]);

    return response()->json(['message' => 'Contact request sent successfully'], 201);
  }
  public function getContactRequestsForGuider(Request $request)
  {
    $guider = $request->user()->id;
    $contactRequests = Contact::where('guider_id', $guider)->get(['id', 'name', 'email', 'message', 'is_approved']);
    if ($contactRequests->isEmpty()) {
      return response()->json(['contact_requests' => 'There is no requests yet'], 200);
    } else {
      return response()->json(['contact_requests' => $contactRequests], 200);
    }
  }

  public function approveContactRequest($id)
  {
    $contact = Contact::findOrFail($id);
    $contact->is_approved = true;
    $contact->save();

    return response()->json(['message' => 'Contact request approved successfully'], 200);
  }
}
