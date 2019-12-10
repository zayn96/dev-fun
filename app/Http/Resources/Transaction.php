<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class Transaction extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'amount' => $this->amount,
            'eSign' => $this->eSign,
            'mpesa_receipt_no' => $this->mpesa_receipt_no,
            'phone_number' => $this->phone_number,
            'username' => $this->username,
            'name' => $this->name,
            'email' => $this->email,
        ];
    }
}
