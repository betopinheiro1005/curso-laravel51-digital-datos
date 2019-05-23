<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="UTF-8">
	<title>@yield('title')</title>
	<link rel="stylesheet"  href="{{ asset('css/bootstrap.css')}}">
	<link rel="stylesheet"  href="{{ asset('css/font-awesome.min.css')}}">

</head>
<body>

	@include('partials.navfront')
	@yield('content')

   <script src="{{ asset('js/jquery.js')}}"></script>
   <script src="{{ asset('js/bootstrap.js')}}"></script>

</body>
</html>