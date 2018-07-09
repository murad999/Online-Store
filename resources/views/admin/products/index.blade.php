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
                <div class="panel-heading">All products</div>

                <div class="panel-body">
                    <button class="btn btn-default"><a href="{{route('products.create')}}">Add Product</a></button>
                    <table class="table table-hover">
                        <caption>This all of products</caption>
                        <thead>
                            <tr  colspan="2">
                                <th>Name</th>
                                <th>Image</th>
                                <th>Price</th>
                                <th>Description</th>
                                <th>Editing</th>
                                <th>Trash</th>
                                <th>Viewing</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($products as $product)  
                            <tr>
                                
                                <td>{{$product->name}}</td>
                                <td><img src="{{asset("$product->image")}}" alt="" width="100px" height="100px"></td> 
                                <td>{{$product->price}}</td> 
                                <td>{{$product->description}}</td> 
                                <td><a href="{{route('products.edit',['id'=>$product->id])}}" class="btn btn-success btn-xs">Edit</a></td> 
                                <td>
                                    <form action="{{route('products.destroy',['id'=>$product->id])}}" method="post">
                                        
                                        {{csrf_field()}}

                                        {{method_field('DELETE')}}

                                        <button type="submit" class="btn btn-danger btn-xs" >Delete</button>
                                    </form>
                                    
                                </td> 
                                <td><a href="{{route('products.show',['id'=>$product->id])}}" class="btn btn-info btn-xs">View</a></td> 
                                    
                            </tr>
                            @endforeach
                        </tbody>
                    </table>

                    {{ $products->links() }}
                </div>
            </div>

@endsection


