@extends('layout')

@section('title')
Create Tweet Form
@endsection
@section('content')
<p>Fill out this form to create a tweet</p>
@include('partials.errors')
<form method="post" action="{{route('tweets.store')}}">
  @csrf
  {{-- ^^Cross-site request forgery protection --}}

  <label for="message">
    <strong>Input a Message:</strong>
    <textarea name="message" id="message" rows="10" cols="30"></textarea>
  </label>
  {{--
  <label for="author">
  <strong>Author Name:</strong>
  <input type="text" name="author" id="author">
  </label>
  --}}
  <input type="submit" value="Publish Tweet">
</form>
@endsection
