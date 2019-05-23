@extends('layouts.admin')

@section('title','Criar Usuarios')

@section('content')

	@if(count($errors) > 0)
		<div class="alert alert-danger" role="alert">
		  <ul>
		  	@foreach($errors->all() as $error)
		  	<li>{{$error}}</li>
		  	@endforeach
		  </ul>
		</div>
	@endif

   {!! Form::open(['route' => 'admin.users.store', 'method' => 'POST']) !!}
		<div class="form-group">
			{!! Form::label('name','Nome') !!}
			{!! Form::text('name',null,['class' =>'form-control', 'placeholder' =>'Nome Completo'])!!}
		</div>

		<div class="form-group">
			{!! Form::label('email','Email') !!}
			{!! Form::email('email',null,['class' =>'form-control', 'placeholder' =>'example@gmail.com'])!!}
		</div>

		<div class="form-group">
			{!! Form::label('password','Senha') !!}
			{!! Form::password('password',['class' =>'form-control', 'placeholder' =>''])!!}
		</div>

		<div class="form-group">
			{!! Form::label('type','Tipo de usuario') !!}
			{!! Form:: select('type',[''=>'Selecione o tipo de usuário'  ,'member' => 'Membro','admin'=>'Administrador'], null, ['class'=>'form-control']) !!}
		</div>

		<div class="form-group">
			{!! Form::submit('Registrar', ['class' =>'btn btn-primary']) !!}

		</div>

	{!! Form::close() !!}
@endsection



