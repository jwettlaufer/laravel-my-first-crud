@extends('layout')

@section('title')
List of Teams:
@endsection

@section('content')
<ul>
  @foreach($teamsAndUsers as $tau)
    <li>
      <h2>{{$tau->team->title}}</h2>
        <ul>
            @foreach($tau->users as $tUser)
              <li>
                <h3>{{$tUser->name}}</h3>
                <p>ID: {{$tUser->id}}</p>
                <p>E-Mail: {{$tUser->email}}</p>
              </li>
            @endforeach
        </ul>
    </li>
  @endforeach
</ul>
@endsection
