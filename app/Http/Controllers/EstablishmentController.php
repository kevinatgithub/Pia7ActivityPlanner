<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Establishment;
use App\Activity;
use App\Guest;
use App\Appointment;
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
            $timeslots[] = ['display' => $computed, 'raw' => clone($start)];
            $start->addMinutes($activity->duration);
        }
        // $activity->start = $start->addMinutes($activity->duration);

        foreach($timeslots as $i => $ts){
            $timeslots[$i] = [
                'timeslot' => $ts['display'],
                'start' => $ts['display'],
                'end' => $ts['raw']->addMinutes($activity->duration)->format("h:i A"),
                'appointments' => Appointment::whereActivity($activity->id)->whereStart($ts['display'])->get()->toArray()
            ];
        }
        $activity->timeslots = $timeslots;
        return $activity;
    }

    function reportactivity($id){
        $activity = Activity::with('establishment')->find($id);
        $start = Carbon::parse(date("Y-m-d ".self::START_TIME.":00"));
        $end = Carbon::parse(date("Y-m-d ".self::END_TIME.":00"));
        $timeslots = [];
        while($diff = $start->diffInMinutes($end) >= $activity->duration){
            $computed_time = $start->hour . ":". str_pad($start->minute,2,"0",STR_PAD_LEFT);
            $computed = Carbon::parse(date("Y-m-d ".$computed_time.":00"))->format("h:i A");
            $timeslots[] = ['display' => $computed, 'raw' => clone($start)];
            $start->addMinutes($activity->duration);
        }
        // $activity->start = $start->addMinutes($activity->duration);

        foreach($timeslots as $i => $ts){
            $timeslots[$i] = [
                'timeslot' => $ts['display'],
                'start' => $ts['display'],
                'end' => $ts['raw']->addMinutes($activity->duration)->format("h:i A"),
                'appointments' => Appointment::with('guest')->whereActivity($activity->id)->whereStart($ts['display'])->get()->toArray()
            ];
        }
        $activity->timeslots = $timeslots;
        return $activity;
    }

    function guests($code){
        return Guest::whereCode($code)->get();
    }

    function guest($id){
        return Guest::with('appointment')->find($id);
    }

    function guestAppointments($id){
        return  Appointment::with('activity')->whereGuest($id)->get();
    }

    function addAppointment(Request $r){
        $guest = $r->guest;
        $activity = $r->activity;
        $start = $r->start;
        $end = $r->end;

        $a = new Appointment;
        $a->guest = $guest;
        $a->activity = $activity;
        $a->start = $start;
        $a->end = $end;
        $a->save();
        return ['data' => ['status' => 'ok']];
    }
}
