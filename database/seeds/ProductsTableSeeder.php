<?php

use Illuminate\Database\Seeder;
use App\Product;

class ProductsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // $p1=[

        // 	'name'=>'The First Product',
        // 	'image'=>'uploads/products/book1.png',
        // 	'price'=>'5000',
        // 	'description'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Praesentium temporibus nobis distinctio quasi repellat quibusdam cum neque nam fuga quae laudantium nostrum dolores dicta ut commodi, est minima vel debitis.'
        // ];
        // $p2=[

        // 	'name'=>'The Second Product',
        // 	'image'=>'uploads/products/book2.png',
        // 	'price'=>'3000',
        // 	'description'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Praesentium temporibus nobis distinctio quasi repellat quibusdam cum neque nam fuga quae laudantium nostrum dolores dicta ut commodi, est minima vel debitis.'
        // ];

        // Product::create($p1);
        // Product::create($p2);
        
        factory(\App\Product::class,30)->create();
    }
}
