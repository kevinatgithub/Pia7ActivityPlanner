<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Activity extends Model
{
    protected $table = "activity";

    function establishment(){
        return $this->belongsTo('App\Establishment','establishment','id');
    }
}
