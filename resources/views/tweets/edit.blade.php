@extends ('layout')

@section('title')
Edit Tweet
@endsection
@section('content')
<p>Use this for to edit your tweet.</p>
@include('partials.errors')
<form method="post" action="{{route('tweets.update', $tweet->id)}}">
  @csrf
  {{-- ^^Cross-site request forgery protection --}}
  @method('PATCH')
  <label for="message">
    <strong>Edit Message:</strong>
    <textarea name="message" id="message" rows="10" cols="30">{{$tweet->message}}</textarea>
  </label>

  {{--
  <label for="author">
  <strong>Author Name:</strong>
  <input type="text" name="author" id="author" value="{{$tweet->author}}">
</label> --}}
  <input type="submit" value="Update Tweet">
</form>
@endsection
