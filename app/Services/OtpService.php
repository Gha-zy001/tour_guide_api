<?php

namespace App\Services;

use App\Notifications\SendOtpNotification;

class OtpService
{
    public function generateOtp()
    {
        return rand(100000, 999999);
    }

    public function sendOtp($guider, $otp)
    {
        $guider->notify(new SendOtpNotification($otp));
    }
}
