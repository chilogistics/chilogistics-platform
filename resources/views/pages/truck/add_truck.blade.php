@extends('layouts.app')
@section('main')

@if ( Auth::user())

<div class="container-fluid">
    <div class="row">
        <div class="add-truck-bg">
            <form class="login-form" action="{{action('App\Http\Controllers\TrucksController@store')}}" method="post">
                @csrf

                @if(Session::get('success'))
                    <x-alert-Success/>
                @endif

                @if(Session::get('fail'))
                    <x-alert-Fail/>
                @endif

                <div class="form-field">
                    <input type="text" placeholder="Truck Number" name="truck_number" required/>
                </div>

                <div class="form-field">
                    <input type="text" placeholder="Make" name="make" required/>
                </div>

                <div class="form-field">
                    <input type="text" placeholder="Model" name="model" required/>
                </div>

                <div class="form-field">
                    <input type="text" placeholder="Year" name="year" required/>
                </div>

                <div class="form-field">
                    <input type="text" placeholder="Odometer" name="odometer" required/>
                </div>

                <div class="form-field">
                    <input type="text" placeholder="Transmission Type" name="transmission"required/>
                </div>

                <div class="form-field">
                    <input type="text" placeholder="Engine" name="engine" required/>
                </div>

                <div class="form-field">
                    <input type="text" placeholder="Horse Power" name="horse" required/>
                </div>

                <div class="form-field">
                    <input type="text" placeholder="Suspension" name="suspension" required/>
                </div>

                <div class="form-field">
                    <input type="text" placeholder="VIN" name="vin" required/>
                </div>

                <div class="form-field">
                    <input type="text" placeholder="Tires Condition" name="tires_condition" required/>
                </div>

                <div class="form-field">
                    <input type="text" placeholder="Tire Size" name="tire_size" required/>
                </div>

                <div class="form-field">
                    <input type="text" placeholder="Wheels" name="wheels" required/>
                </div>

                <div class="form-field">
                    <input type="text" placeholder="Price" name="price" />
                </div>

                <select name="available_for" required>
                    <option value="0"> Unavailable </option>
                    <option value="1"> Rent </option>
                    <option value="2"> Lease </option>
                    <option value="3"> Purchase </option>
                    <option value="4"> Lease-Purchase </option>
                    <option value="5"> Rent or Lease </option>
                    <option value="6"> Company Driver Only </option>
                </select>

                <div class="form-field">
                    <button class="login-submit" type="submit">
                        <i class="fa-solid fa-circle-plus"></i> Add Truck
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>



@endif

@endsection