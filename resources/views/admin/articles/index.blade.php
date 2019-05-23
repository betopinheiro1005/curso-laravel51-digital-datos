@extends('layouts.admin')

@section('title', 'Listagen de artigos')

@section('content')

  @if(Session::has('message'))
      <div class="alert alert-success alert-dismissible" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        {{Session::get('message')}}
      </div>
  @endif

  <table class="table table-striped">
    <thead>
    	<th>Título</th>
    	<th>Conteúdo</th>
    	<th>Autor</th>
    	<th>Categoria</th>
      <th>Imagem</th>
      <th width="100px">Ações</th>
    </thead>

    <tbody>
    	<tr>
    		@foreach ($articles as $article)
    		<td>{{$article->title}}</td>
    		<td>{{substr($article->content, 0,300)}}...</td>
        <td>{{$article->user->name}}</td>
        <td>{{$article->category->name}}</td>
        @if(empty($article->path))
          <td><img src="{{asset('images')}}/no-imagen.jpg"  style ="width: 100px;" ></td>
        @else
          <td><img src="{{asset('images')}}/{{$article->path}}"  style ="width: 100px;" ></td>
        @endif

    		<td>
          <a class="btn btn-success" href="{{route('admin.articles.edit', $article->id)}}" role="button"><i class="fa fa-pencil-square-o"></i></a>
    		  <a class="btn btn-danger" href="{{route('admin.articles.destroy', $article->id)}}" onclick="return confirm('Tem certeza que deseja excluir o artigo?')" role="button"><i class="fa fa-trash-o"></i></a>
    		</td>
    	</tr>
    	@endforeach
    </tbody>
  </table>

  {!! $articles->render() !!}

@endsection