@extends ('layout')

@section('title')
Edit Tweet
@endsection
@section('content')
<h1>Edit Tweet</h1>
<p>Use this for to edit your tweet.</p>
<div role="alert">
  @if ($errors->any())
  <ul>
    @foreach ($errors->all() as $error)
      <li>{{$error}}</li>
    @endforeach
  </ul>
  @endif
</div>
<form method="post" action="{{route('tweets.update', $tweet->id)}}">
  @csrf
  {{-- ^^Cross-site request forgery protection --}}
  @method('PATCH')
  <label for="message">
    <strong>Edit Message:</strong>
    <textarea name="message" id="message" rows="10" cols="30">{{$tweet->message}}</textarea>
  </label>
  <label for="author">
  <strong>Author Name:</strong>
  <input type="text" name="author" id="author" value="{{$tweet->author}}">
  </label>
  <input type="submit" value="Update Tweet">
</form>
@endsection
