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
         <div class="panel-heading">Create a New Product</div>

        <div class="panel-body">
        	<form action="{{route('products.store')}}" method="post" accept-charset="utf-8" enctype="multipart/form-data">
        		{{csrf_field()}}
	        	<div class="form-group">
	            	<label for="name">Name</label>
	            	<input name="name" class="form-control" type="text"></input>
	            </div>
	            {{-- <div class="form-group">
	            	<label for="category_id">Select Category</label>
	            	<select name="category_id" class="form-control">
	            		<option value="default">Select Category</option>
	            		@foreach($categories as $category)
	            			<option value="{{$category->id}}">{{$category->name}}</option>
	            		@endforeach
	            	</select>
	            </div> --}}
	            
	            <div class="form-group">
	            	<label for="image"> Image</label>
	            	<input name="image" class="form-control" type="file"></input>
	            </div>
	            <div class="form-group">
	            	<label for="price"> Price</label>
	            	<input name="price" class="form-control" type="text"></input>
	            </div>
	            <div class="form-group">
	            	<label for="description">Description</label>
	            	<textarea name="description" id="editor" cols="5" rows="5" class="form-control"></textarea>
	            </div>
	            <div class="form-group">
	            	<div class="text-center">
	            		<button class="btn btn-success btn-block" type="submit">Store Product</button>
	            	</div>
	            </div>
        	</form>
        </div>
    </div>
@stop

@section('styles')
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css" rel="stylesheet">
@stop
@section('scripts')
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>
<script type="text/javascript">
	
	$(document).ready(function() {
	  $('#editor').summernote();
	});
</script>
@stop