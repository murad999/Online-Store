<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Cart;

use App\Product;
use Session;

class ShoppingController extends Controller
{
    public function add_to_cart(){
    	//dd(request()->all());

    	$product=Product::find(request()->product_id);

    	//echo $product;
    	//
    	
    	$cartItem =Cart::add([

    		'id'=>$product->id,
    		'name'=>$product->name,
    		'price'=>$product->price,
    		'qty'=>request()->qty,

    	]);


    	Cart::associate($cartItem->rowId,'App\Product');

    	//dd($cart);
    	return redirect()->route('cart');
    }

    public function cart(){
    	//Cart::destroy();
    	return view ('cart');
    }

    public function cart_delete($id){
    	Cart::remove($id);

    	return redirect()->back();
    }

    public function cart_product_derc($id, $qty){

    	Cart::update($id,$qty - 1);

    	return redirect()->back();
    }

    public function cart_product_inrc($id, $qty){

    	Cart::update($id,$qty + 1);

    	return redirect()->back();
    }

    public function rapid_add($id){

        $product=Product::find($id);

        //echo $product;
        //
        
        $cartItem =Cart::add([
 
            'id'=>$product->id,
            'name'=>$product->name,
            'price'=>$product->price,
            'qty'=>1,

        ]);


        Cart::associate($cartItem->rowId,'App\Product');

        //dd($cart);
        Session::flash('success','Add your Product to Cart');
        return redirect()->back();
    }
}
