@extends('layouts.admin')

@section('title', 'Listagem de usuarios')

@section('content')

	@if(Session::has('message'))
		<div class="alert alert-success alert-dismissible" role="alert">
		  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		  {{Session::get('message')}}
		</div>
	@endif

	<table class="table table-striped">
		<thead>
			<th>Nome</th>
			<th>Email</th>
			<th>Tipo</th>
			<th>Ações</th>
		</thead>
		<tbody>
			@foreach($users as $user)
				<tr>
					<td>{{ $user['name'] }} </td>
					<td>{{ $user['email'] }} </td>
					<td>{{ $user['type'] }} </td>
			  		<td>
			  			<a class="btn btn-success" href="{{route('admin.users.edit', $user->id)}}" role="button"><i class="fa fa-pencil-square-o"></i></a>
		  		    	<a class="btn btn-danger" href="{{route('admin.users.destroy', $user->id)}}" onclick="return confirm('Tem certeza que deseja excluir o usuário?')" role="button"><i class="fa fa-trash-o"></i></a>
			  		</td>
				</tr>
			@endforeach
		</tbody>
	</table>

	{!! $users->render() !!}

@endsection