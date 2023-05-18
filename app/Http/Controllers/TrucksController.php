<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Truck;
use Illuminate\Support\Facades\Response;


class TrucksController extends Controller
{

    public $searchTrucks;
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $available_trucks = Truck::where('available', 'YES')->get();
        // $all_trucks = Truck::all();
        $all_trucks = Truck::where('id', 'like', '%'.$this->searchTrucks.'%')->get();

        $title = "Available trucks";
        return view("pages.truck.available_trucks")
        ->with('title',$title)
        ->with('available_trucks', $available_trucks)
        ->with('all_trucks', $all_trucks);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $title = "Add new truck";
        return view("pages.truck.add_truck")->with('title',$title);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // $request->validate([
        //     'truck_number'=>'required|unique:trucks'
        //     ]);

        $truck_number = $request->input('truck_number');
        if (Truck::where('id', '=', $truck_number)->exists()) {
            return back()->with('fail', 'Truck '.$truck_number.' already exists');
        }
        else{
        $truck = new truck;
  

        $available_for = $request->available_for;
        if($available_for == 1){
            $available_for = "Rent";
            $available = "YES";
        }
        elseif ($available_for == 2) {
            $available_for = "Purchase";
            $available = "YES";
        }
        elseif ($available_for == 3) {
            $available_for = "Purchase";
            $available = "YES";
        }
        elseif ($available_for == 4) {
            $available_for = "Lease-Purchase";
            $available = "YES";
        }
        elseif ($available_for == 5) {
            $available_for = "Rent or Lease";
            $available = "YES";
        }
        elseif($available_for == 6){
            $available_for = "Company Driver Only";
            $available = "YES";
        }
        elseif($available_for == 0){
            $available_for = "";
            $available = "NO";
        }

        $truck->truck_number = $request->input('id');
        $truck->make = $request->input('make');
        $truck->model = $request->input('model');
        $truck->year = $request->input('year');
        $truck->odometer = $request->input('odometer');
        $truck->transmission_type = $request->input('transmission');
        $truck->engine = $request->input('engine');
        $truck->horse_power = $request->input('horse');
        $truck->suspension_type = $request->input('suspension');
        $truck->vin = $request->input('vin');
        $truck->tires_condition = $request->input('tires_condition');
        $truck->tire_size = $request->input('tire_size');
        $truck->wheels = $request->input('wheels');
        $truck->price = $request->input('price');
        
        $truck->available = $available;
        $truck->available_for = $available_for;

        $truck->save();

        if($truck){
            return back()->with('success', 'Truck '.$truck_number.' has been added successfully');
        }
        else{
            return back()->with('fail', 'Sorry an error has occurred');
        }

    }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {   
        return view('pages.truck.edit_truck')
        ->with('truck', $truck = Truck::find($id));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $truck = Truck::find($id);

        $available_for = $request->input('available_for');
        if($available_for == "Program"){}
        else if($available_for == "Sold"){
            $truck->available_for = "Sold";
            $truck->status = "Sold";
        }
        else {$truck->available_for = $available_for;
            $truck->available = "YES";
            if($request->input('status') == "Status"){}
        }

        $price = $request->input('Price');
        if($price == ""){}
        else{ $truck->price = $price; }

        $odometer = $request->input('Odometer');
        if($odometer == ""){}
        else{ $truck->odometer = $odometer; }

        $available = $request->input('Availability');
        if($available == "Availability"){}
        else{ $truck->available = $available;}
        
        $company = $request->input('Company');
        if($company == "Company"){}
        else{$truck->company = $company;}
        
        $status = $request->input('Status');
        if($status == "Status"){}
        else if($status == "Not ready"){
            $truck->status = "Not ready";
            $truck->available = "NO";
        }
        else{
            $truck->status = $status;
            $truck->available = "YES";
        }

        $notes = $request->input('Notes');
        if($notes = ""){}
        else{$truck->notes = $notes;}

        $truck->notes = $request->input('Notes');

        
        $truck->update();

        if($truck){
            return redirect('/')->with('success', 'Truck '.$truck->id.' has been updated successfully');
        }
        else{
            return redirect('/')->with('fail', 'Sorry an error has occurred');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $truck = Truck::find($id);
        $truck->delete();
        if($truck){
            return redirect('/')->with('warning', 'Truck '.$truck->id.' has been deleted');
        }
        else{
            return redirect('/')->with('fail', 'Sorry an error has occurred');
        }
    }
}
