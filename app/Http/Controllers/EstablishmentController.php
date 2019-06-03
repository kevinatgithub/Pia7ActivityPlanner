<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Establishment;
use App\Activity;
use Carbon\Carbon;

class EstablishmentController extends Controller
{
    const START_TIME = "09:00";
    const END_TIME = "18:00";

    function lists(Request $r){
        return Establishment::with('activities')->get()->sortBy('name');
    }

    function activity($id){
        $activity = Activity::with('establishment')->find($id);
        $start = Carbon::parse(date("Y-m-d ".self::START_TIME.":00"));
        $end = Carbon::parse(date("Y-m-d ".self::END_TIME.":00"));
        $timeslots = [];
        while($diff = $start->diffInMinutes($end) >= $activity->duration){
            $computed_time = $start->hour . ":". str_pad($start->minute,2,"0",STR_PAD_LEFT);
            $computed = Carbon::parse(date("Y-m-d ".$computed_time.":00"))->format("h:i A");
            $timeslots[] = $computed;
            $start->addMinutes($activity->duration);
        }
        // $activity->start = $start->addMinutes($activity->duration);
        $activity->start = $timeslots;
        return $activity;
    }
}
