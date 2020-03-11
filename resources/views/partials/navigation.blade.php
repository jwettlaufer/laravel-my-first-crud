<nav class="nav">
  <h2>CRUD Nav</h2>
  <a class="nav-link" href="{{route('tweets.index')}}">
  Index</a>
  @auth
  <a class="nav-link" href="{{route('tweets.create')}}">Create</a>
  @endauth
</nav>
