<?php

namespace App\Http\Middleware;

use Closure;
use App\User;
use Auth;

class CheckAge
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        // Get the user.
        if ($user = Auth::user())
        {
          //Check useer age.
          if ($user->age >= 18)
          {
            //If user old enough, continue.
            return $next($request);
          }
        }
        //Defualt is redirect to home (user is not old enough.)
        return redirect('home');
    }
}
