<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Teams; // Let's pull in our User model!
use Auth; // Need to pull in Auth in order to use it!

class TeamsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      $teamsAndUsers = array();

      $teams = Teams::all();
      foreach ( $teams as $team )
      {
          $newList = new \stdClass();
          $newList->team = $team;
          $newList->users = $team->users()->get();
          $teamsAndUsers[] = $newList;
      }

      return view( 'teams.index', compact( 'teamsAndUsers' ) );
  }
}
