<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Establishment extends Model
{
    protected $table = "establishment";

    function activities(){
        return $this->hasMany('App\Activity','establishment','id');
    }
}
