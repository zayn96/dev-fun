<?php


namespace App;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;

class transaction extends Model
{
    use HasApiTokens, Notifiable;
    protected $fillable = [
        'amount',
        'eSign',
        'mpesa_receipt_no',
        'phone_number',
        'username',
        'name',
        'email',
    ];
    public $timestamps = false;


}
