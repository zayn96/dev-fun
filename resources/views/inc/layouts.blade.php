<!DOCTYPE html>
<html>
<head>
    <title>Dev.fun</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <!--Bootsrap 4 CDN-->
    <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet">
    <script type="text/javascript" src="{{ asset('js/app.js') }}"></script>
    <link rel="stylesheet" type="text/css" href="{{url('style.css')}}">
    @yield('content')
</head>
</html>
