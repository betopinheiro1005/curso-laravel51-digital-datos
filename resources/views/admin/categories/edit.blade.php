@extends('layouts.admin')

@section('title','Editar Categoria')

@section('content')

			@if(count($errors) >0)
				<div class="alert alert-danger" role="alert">
				  <ul>
				  	@foreach($errors->all() as $error)
				  	<li>{{$error}}</li>
				  	@endforeach
				  </ul>
				</div>
			@endif

           {!! Form::open(['route' => ['admin.categories.update', $category], 'method' => 'PUT']) !!}
				<div class="form-group">
					{!! Form::label('name','Nome') !!}
					{!! Form::text('name', $category->name,['class' =>'form-control', 'placeholder' =>'Nome Completo','required'])!!}
				</div>

				<div class="form-group">
					{!! Form::submit('Atualizar', ['class' =>'btn btn-primary']) !!}
				</div>
			{!! Form::close() !!}

@endsection



