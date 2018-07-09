@extends('layouts.app')

@section('content')
    @if(count($errors)>0)
        <ul class="list-group">
            @foreach($errors->all() as $error)
                <li class="list-group-item text-danger">{{$error}}</li>
            @endforeach
        </ul>
    @endif
            <div class="panel panel-default">
                <div class="panel-heading">Single product</div>

                <div class="panel-body">
                    <button class="btn btn-default"><a href="{{route('products')}}">All Products</a></button>
                    <div style="margin-top: 10px">
                        <img src="{{asset($product->image)}}">
                        <h4 style="color: green">Product Name : </h4>{{$product->name}}<br>
                        <span style="color: green">Product Price : </span>{{$product->price}}
                        <p><span style="color: green">Product Description : </span>{{$product->description}}</p>
                    </div>
                    
                </div>
            </div>

@endsection


