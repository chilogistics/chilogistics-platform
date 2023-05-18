@extends('layouts.app')
@section('main')

    @if (Auth::user())
        <div class="container-fluid platform-background">
            <div class="row">
                <div class="app-bg">
                    <div class="login-form">
                        <form action="{{ action('App\Http\Controllers\TrucksController@update', $truck) }}" method="POST">
                            @csrf
                            @method('PUT')
                            @if (Session::get('success'))
                                <x-alert-success />
                            @endif

                            @if (Session::get('fail'))
                                <x-alert-fail />
                            @endif

                            <div class="alert alert-warning" style="width: 100%; text-align:center;" role="alert">
                                <b style="font-size:17px"> Alert: You are updating truck {{ $truck->id }} </b>
                            </div>

                            <div class="input-group mb-3 mx-auto">
                                <span class="input-group-text">
                                    <i class="fa-solid fa-road icon"></i>
                                </span>
                                <input type="text" class="form-control shadow-none" value="{{$truck->odometer}}" name="Odometer">
                            </div>

                            <div class="input-group mb-3 mx-auto">
                                <span class="input-group-text" style="width:53px; justify-content:center;">
                                    <i class="fa-solid fa-dollar-sign fa-lg"></i>
                                </span>
                                <input type="text" class="form-control shadow-none" value="{{$truck->price}}" name="Odometer">
                            </div>

                            <div class="input-group mb-3 mx-auto">
                                <textarea placeholder="Notes:" name="Notes" style="width:100%; height:200px;padding:10px;resize:none; text-align:left;">{{$truck->notes}}</textarea>
                            </div>

                            <select name="available_for" style="width: 100%; margin-bottom:15px">
                                <option value="Program"> Program </option>
                                <option value="Rent"> Rent </option>
                                <option value="Sold"> Sold </option>
                                <option value="Lease"> Lease </option>
                                <option value="Purchase"> Purchase </option>
                                <option value="Lease-Purchase"> Lease-Purchase </option>
                                <option value="Rent or Lease"> Rent or Lease </option>
                                <option value="Company Driver Only"> Company Driver Only </option>
                            </select>

                            <select name="Availability" style="width:100%; margin-bottom:15px;">
                                <option value="Availability"> Availability </option>
                                <option value="YES"> Yes </option>
                                <option value="NO"> No </option>
                            </select>

                            <select name="Company" style="width:100%; margin-bottom:15px;">
                                <option value="Company"> Company </option>
                                <option value="CHI"> CHI Logistics </option>
                                <option value="KZ"> KZ Inc </option>
                            </select>

                            <select name="Status" style="width:100%; margin-bottom:25px;">
                                <option value="Status"> Status </option>
                                <option value="Ready"> Ready </option>
                                <option value="Shop"> Shop </option>
                                <option value="Wash"> Wash </option>
                                <option value="Sold"> Sold </option>
                                <option value="Not ready"> Not ready </option>
                            </select>

                            <div class="form-field" style="display: block;">
                                <form method="PUT">
                                    <button class="btn btn-success btn-lg" type="submit"
                                        style="display: block; margin:10px auto;font-size:17px">
                                        <i class="fa-regular fa-floppy-disk"></i> Save updates </button>
                                </form>
                            </div>
                        </form>

                        <div class="form-field" style="display: block;">
                            @if (auth()->user()->role_id == 1)
                                <button type="submit" class="btn btn-danger btn-lg"
                                    data-target="#exampleModal{{ $truck->id }}" data-toggle="modal"
                                    style="display: block; margin:10px auto;font-size:17px">
                                    <i class="fa-solid fa-trash-can"></i> Delete Truck
                                </button>
                                @include('components.modal.truck-delete')
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endif

@endsection
