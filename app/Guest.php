<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Guest extends Model
{
    protected $table = "guest";

    function appointments(){
        return $this->hasMany('App\Appointment','id','guest');
    }
}
