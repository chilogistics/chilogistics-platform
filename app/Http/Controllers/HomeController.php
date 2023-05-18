<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Truck;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {   
        $available_trucks = Truck::where('available', 'YES')->get();
        $all_trucks = Truck::all();

        return view("pages.dashboard")
        ->with('available_trucks', $available_trucks)
        ->with('all_trucks', $all_trucks);
    }
}
