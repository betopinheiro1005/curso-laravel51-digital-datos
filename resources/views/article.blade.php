@extends('layouts.front')

@section('title', 'Mi blog')

@section('content')

<div class="container">
	<div class="row">

		<div class="col-md-8">
			<h1>Últimas Notícias</h1>

				<article>
				<h2>{{$articles->title}} </h2>

					<div class="row">

						<div class="col-md-6">
							 <span class="glyphicon glyphicon-folder-open"></span> {{$articles->category->name}}
							 <span class="glyphicon glyphicon-user"></span>  {{$articles->user->name}}
						</div>

						<div class="col-md-6">
							<span class="glyphicon glyphicon-calendar"></span> {{Date::parse($articles->created_at)->format('j \d\e F \d\e Y')}}
						</div>

					</div>

					<br>
					@if(empty($articles->path))
					@else
					<img src="{{route('home')}}/images/{{$articles->path}}" class="img-responsive">
					@endif
					<br>

					<p class="text-justify">{{($articles->content)}}</p>

				</article>
				<button class="btn btn-primary" onclick="history.go(-1)">« Retornar </button>

					<div id="disqus_thread"></div>
					<script>

					/**
					*  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
					*  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/
					/*
					var disqus_config = function () {
					this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
					this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
					};
					*/
					(function() { // DON'T EDIT BELOW THIS LINE
					var d = document, s = d.createElement('script');
					s.src = 'https://oriontecinfo-1.disqus.com/embed.js';
					s.setAttribute('data-timestamp', +new Date());
					(d.head || d.body).appendChild(s);
					})();
					</script>
					<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>

				</div>

				<div class="col-md-4">
					<div class="panel panel-primary">
		  <!-- Default panel contents -->
					  <div class="panel-heading">Últimas Notícias</div>
					  <div class="panel-body">

					  </div>

					  <!-- List group -->
					  <ul class="list-group">
					    <li class="list-group-item">Cras justo odio</li>
					    <li class="list-group-item">Dapibus ac facilisis in</li>
					    <li class="list-group-item">Morbi leo risus</li>
					    <li class="list-group-item">Porta ac consectetur ac</li>
					    <li class="list-group-item">Vestibulum at eros</li>
					  </ul>
					</div>

					<div class="panel panel-primary">
		  <!-- Default panel contents -->
					  <div class="panel-heading">Recursos</div>
					  <div class="panel-body">

					  </div>

					  <!-- List group -->
					  <ul class="list-group">
					    <li class="list-group-item">Cras justo odio</li>
					    <li class="list-group-item">Dapibus ac facilisis in</li>
					    <li class="list-group-item">Morbi leo risus</li>
					    <li class="list-group-item">Porta ac consectetur ac</li>
					    <li class="list-group-item">Vestibulum at eros</li>
					  </ul>
					</div>

				</div>

				</div>

			</div> <!-- fin row -->

			<footer>
				<div class="container">
				<hr/>
				 	<p class="text-center">Copyright &copy; Digital Datos.Todos os direitos reservados</p>
				</div>
			</footer>







</div>


@endsection