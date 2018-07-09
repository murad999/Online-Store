<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
//Fornt-end controller
Route::get('/', [

	'uses'=>'FrontEndController@index',
	'as'=>'index'

]);

Route::get('/product/{id}',[

	'uses'=>'FrontEndController@singleProduct',
	'as'=>'product.single'

]);

Route::post('/cart/add',[

	'uses'=>'ShoppingController@add_to_cart',
	'as'=>'cart.add'

]);
Route::get('/cart',[

	'uses'=>'ShoppingController@cart',
	'as'=>'cart'

]);

Route::get('/cart/delete/{id}',[

	'uses'=>'ShoppingController@cart_delete',
	'as'=>'cart.delete'

]);

Route::get('/cart/derc/{id}/{qty}',[

	'uses'=>'ShoppingController@cart_product_derc',
	'as'=>'cart.derc'

]);

Route::get('/cart/rapid/add/{id}',[

	'uses'=>'ShoppingController@rapid_add',
	'as'=>'cart.rapid.add'

]);

Route::get('/cart/inrc/{id}/{qty}',[

	'uses'=>'ShoppingController@cart_product_inrc',
	'as'=>'cart.inrc'

]);

Route::get('/cart/checkout',[

	'uses'=>'CheckoutController@index',
	'as'=>'cart.checkout'

]);

Route::post('/cart/checkout',[

	'uses'=>'CheckoutController@pay',
	'as'=>'cart.checkout'

]);




Auth::routes();




Route::group(['prefix'=>'admin','middleware'=>'auth'],function(){

	//Route::get('/home', 'HomeController@index')->name('home');
	

	Route::get('/home',[

		'uses'=>'HomeController@index',
		'as'=>'home'

	]);

	Route::get('/products',[

		'uses'=>'ProductsController@index',
		'as'=>'products'

	]);

	Route::get('/products/create',[

		'uses'=>'ProductsController@create',
		'as'=>'products.create'

	]);

	Route::post('/products/store',[

		'uses'=>'ProductsController@store',
		'as'=>'products.store'

	]);

	Route::get('/product/edit/{id}',[

		'uses'=>'ProductsController@edit',
		'as'=>'products.edit'
	]);

	Route::post('/products/update/{id}',[

		'uses'=>'ProductsController@update',
		'as'=>'products.update'

	]);

	Route::delete('/products/destroy/{id}',[

		'uses'=>'ProductsController@destroy',
		'as'=>'products.destroy'

	]);

	Route::get('/product/show/{id}',[

		'uses'=>'ProductsController@show',
		'as'=>'products.show'
	]);


});