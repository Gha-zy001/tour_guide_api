<?php

namespace App\Services;

use Twilio\Rest\Client;
use Twilio\Exceptions\TwilioException;

class TwilioService
{
    protected $client;

    public function __construct()
    {
        $this->client = new Client(config('services.twilio.sid'), config('services.twilio.token'));
    }

    public function sendSms($to, $message)
    {
        try {
            return $this->client->messages->create($to, [
                'from' => config('services.twilio.phone_number'),
                'body' => $message,
            ]);
        } catch (TwilioException $e) {
            throw new \Exception('Failed to send SMS: ' . $e->getMessage());
        }
    }
}
