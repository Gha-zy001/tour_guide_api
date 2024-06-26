<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;
use Ichtrojan\Otp\Otp;

class ResetPasswordNotification extends Notification
{
  use Queueable;
  // public $url;
  public $message;
  public $subject;
  public $fromEmail;
  public $mailer;
  private $otp;
  /**
   * Create a new notification instance.
   */
  public function __construct()
  {
    $this->message = 'Use The below code for resetting your password';
    $this->subject = 'Verificatio Needed';
    $this->fromEmail = 'laravel@laravel.com';
    $this->mailer = 'smtp';
    $this->otp = new Otp;

    // $this->url = $url;
  }

  /**
   * Get the notification's delivery channels.
   *
   * @return array<int, string>
   */
  public function via(object $notifiable): array
  {
    return ['mail'];
  }

  /**
   * Get the mail representation of the notification.
   */
  public function toMail(object $notifiable): MailMessage
  {
    $otp = $this->otp->generate($notifiable->email, 'numeric', 6, 60);
    return (new MailMessage)
      ->mailer('smtp')
      ->subject($this->subject)
      ->greeting('Hello ' . $notifiable->first_name)
      ->line($this->message)
      ->line('code: ' . $otp->token);
    // ->line('Forgot Password')
    // ->action('Click to reset', $this->url)
    // ->line('Thank you for using our application!');
  }

  /**
   * Get the array representation of the notification.
   *
   * @return array<string, mixed>
   */
  public function toArray(object $notifiable): array
  {
    return [
      //
    ];
  }
}
