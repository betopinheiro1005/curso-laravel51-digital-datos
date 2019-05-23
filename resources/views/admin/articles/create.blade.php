@extends('layouts.admin')

@section('title','Criar Artigos')

@section('content')

           {!! Form::open(['route' => 'admin.articles.store', 'method' => 'POST','files'=>true]) !!}

				<div class="form-group">
					{!! Form::label('title','Título') !!}
					{!! Form::text('title',null,['class' =>'form-control', 'placeholder' =>'Título do artigo','required'])!!}
				</div>

				<div class="form-group">
					{!! Form::label('content','Conteúdo') !!}
					{!! Form::textarea('content',null,['class' =>'form-control', 'placeholder' =>'Conteúdo do artigo','required'])!!}
				</div>


				<div class="form-group">
					{!! Form::label('categoria','Categoria') !!}
					{!! Form::select('category_id',$categories, null,['class' =>'form-control'])!!}
				</div>

				<div class="form-group">

					{!! Form::hidden('user_id', Auth::user()->id, null,['class' =>'form-control'])!!}
				</div>

				<div class="form-group">
					{!! Form::label('imagem','Imagem') !!}
					{!! Form::file('path')!!}
				</div>

				<div class="form-group">
					{!! Form::submit('Registrar', ['class' =>'btn btn-primary']) !!}
				</div>

			{!! Form::close() !!}
@endsection
