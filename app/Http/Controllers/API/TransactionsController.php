<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController as BaseController;
use App\Transaction;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Facades\Validator;
use App\Http\Resources\Transaction as TransactionResource;
use Laravel\Passport\HasApiTokens;

class TransactionsController extends BaseController
{
    use HasApiTokens, Notifiable;

    /**
     * @return \Illuminate\Http\Response
     *
     *
     */
    public function index()
    {
        $transactions =Transaction::all();

        return $this->sendResponse(TransactionResource::collection($transactions), 'Transactions retrieved successfully.');
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     *
     */
    public function store(Request $request)
    {
        $request->validate([
            'amount'=>'required',
            'eSign'=>'required',
            'mpesa_receipt_no'=>'required',
            'phone_number'=>'required',
            'username'=>'required',
            'name'=>'required',
            'email'=>'required',
        ]);
        $transaction=Transaction::create($request->all());

        return response()->json([
            'code'=>'201',
            'data'=>'transaction',
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $transaction = Transaction::find($id);

        if (is_null($transaction)) {
            return $this->sendError('transaction not found.');
        }

        return $this->sendResponse(new TransactionResource($transaction), 'Transaction retrieved successfully.');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Transaction $transaction)
    {
        $input = $request->all();

        $validator = Validator::make($input, [
            'amount'=>'required',
            'eSign'=>'required',
            'mpesa_receipt_no'=>'required',
            'phone_number'=>'required',
            'username'=>'required',
            'name'=>'required',
            'email'=>'required'
        ]);

        if($validator->fails()){
            return $this->sendError('Validation Error.', $validator->errors());
        }
        $transaction->amount = $input['amount'];
        $transaction->eSign = $input['eSign'];
        $transaction->mpesa_receipt_no = $input['mpesa_receipt_no'];
        $transaction->phone_number = $input['phone_number'];
        $transaction->username = $input['username'];
        $transaction->name = $input['name'];
        $transaction->email = $input['email'];
        $transaction->save();

        return $this->sendResponse(new TransactionResource($transaction), 'Transaction updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Transaction $transaction)
    {
        $transaction->delete();
        return response()->json(
            [
                'code'=>'200'
            ]);
    }
}
