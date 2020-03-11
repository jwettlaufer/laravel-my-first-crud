@extends ('layout')
@section('title')
Show Tweet
@endsection
@section('content')
@include('partials.errors')

<h2>{{$tweetUser->name}}</h2>
<p>
  {{$tweet->message}}
</p>
@endsection
