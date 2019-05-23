@extends('layouts.admin')

@section('title','Editar artigo: '. $article->title)

@section('content')

    {!!Form::model($article,['route'=>['admin.articles.update',$article],'method'=>'PUT','files' => true])!!}

	    <div class="form-group">
			{!!Form::label('title','Título')!!}
			{!!Form::text('title',null,['class'=>'form-control','placeholder'=>'Entre com o título'])!!}
		</div>

		<div class="form-group">
					{!! Form::label('content','Conteúdo') !!}
					{!! Form::textarea('content',null,['class' =>'form-control', 'placeholder' =>'Conteúdo'])!!}
		</div>

		<div class="form-group">
					{!! Form::label('usuario','Usuário') !!}
					{!! Form:: select('user_id',$users, null,['class'=>'form-control']) !!}
		</div>

		<div class="form-group">
					{!! Form::label('categoria','Categoria') !!}
					{!! Form:: select('category_id',$categories, null,['class'=>'form-control']) !!}
		</div>

		@if(empty($article->path))
			  <img src="{{asset('images')}}/no-imagen.jpg" alt="" style="width:100px;"/>
			 @else
			 <img src="{{asset('images')}}/{{$article->path}}" alt="" style="width:100px;"/>
		 @endif

		<div class="form-group">
					{!!Form::label('imagem','Imagem')!!}
					{!!Form::file('path')!!}
		</div>

	{!!Form::submit('Atualizar',['class'=>'btn btn-primary'])!!}
	{!!Form::close()!!}<br>

@endsection