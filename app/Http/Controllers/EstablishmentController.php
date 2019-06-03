<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Establishment;

class EstablishmentController extends Controller
{
    function lists(Request $r){
        return Establishment::with('activities')->get()->sortBy('name');
    }
}
