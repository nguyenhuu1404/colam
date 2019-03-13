<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    @if(isset($title))
        <title>{{ $title }}</title>
    @else
        <title>Học tiếng Nhật online - Tiếng Nhật Cô Lam</title>
    @endif
    @if(isset($description))
        <meta name="description" content="{{ $description }}">
    @else
        <meta name="description" content="Học Tiếng Nhật Online Cùng Tiếng Nhật Cô Lam. Học tiếng Nhật online thành thạo dành cho người mới bắt đầu học tiếng Nhật.">
    @endif
	<link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">
	<link rel="stylesheet" href="{{ asset('css/font-awesome.min.css') }}">
	<link rel="stylesheet" href="{{ asset('css/slick.css') }}">
	<link rel="stylesheet" href="{{ asset('css/slick-theme.css') }}">
    <link rel="stylesheet" href="{{ asset('css/styles.css') }}">
   <!--  <link rel="stylesheet" href="{{ asset('css/jquery.mmenu.all.css') }}"> -->
    @yield('styles')

</head>
<body>
<!-- <div id="andy"> -->
	<div class="container-fluid">
		<div class="row">
            @include('frontend.common.header')
            @yield('content')

            @include('frontend.common.footer')
		</div>
	</div>
<!-- </div> --> <!-- end #andy -->
    <script src="{{ asset('js/jquery.min.js') }}"></script>
    <script src="{{ asset('js/main.js') }}"></script>
	<script src="{{ asset('js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('js/slick.js') }}"></script>

   <!--  <script src="{{ asset('js/jquery.mmenu.all.min.js') }}"></script> -->
	<script>
		function register(){
			$('#login').modal('hide');
		}
	</script>

	 @stack('scripts')

	<div id="fb-root"></div>
	<script>(function(d, s, id) {
	  var js, fjs = d.getElementsByTagName(s)[0];
	  if (d.getElementById(id)) return;
	  js = d.createElement(s); js.id = id;
	  js.src = 'https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v3.2';
	  fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));</script>
</body>
</html>
