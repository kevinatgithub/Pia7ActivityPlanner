<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Appointment extends Model
{
    protected $table = "appointment";

    function activity(){
        return $this->belongsTo('App\Activity','activity','id');
    }

    function guest(){
        return $this->belongsTo('App\Guest','guest','guest_id');
    }
}
