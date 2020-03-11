<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Teams extends Model
{
    //
    public function users()

    {
      return $this->belongsToMany('App\User');

    }
}
