<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Mail;
use Cart;
use Session;
use Stripe\Stripe;
use Stripe\Charge;

class CheckoutController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(Cart::content()->count() == 0){
            Session::flash('info', 'Yor Cart still empty. Do some shopping:3');
            return redirect()->back();
        }
        return view('checkout');
    }



    public function pay(){
        //dd(request()->all());

        Stripe::setApiKey('sk_test_wJtiW6THtitfQeScE8aKLgX8');

        $token= request()->stripeToken;

        $charge = Charge::create([
            'amount' => Cart::total() * 100, 
            'currency' => 'usd',
            'source' => $token,
        ]);

        //dd('you card was charged successfully');
        Session::flash('success','Purchase successfully wait for our email');

        Cart::destroy();

        Mail::to(request()->stripeEmail)->send(new \App\Mail\PurchaseSuccessful);

        return redirect('/');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
