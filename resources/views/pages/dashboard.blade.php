@extends('layouts.app')
@section('main')

@if ( Auth::user())

@if(Session::get('success'))
<x-alert-success/>
@endif

@if(Session::get('warning'))
<x-alert-warning/>
@endif

@if(Session::get('fail'))
<x-alert-fail/>
@endif

<div class="available_trucks">
  <h4 class="available_trucks_header">Available Trucks
    <i class="fa-solid fa-circle-check icon" style="color: #198754"></i>
  </h4>
  <a href="/trucks/create" style="color:white;text-decoration:none">
    <button type="button" class="btn btn-success btn-lg"> 
      <i class="fa-solid fa-circle-plus"></i> Add Truck </button>
  </a>

  <a href="/upload" style="color:white;text-decoration:none">
    <button type="button" class="btn btn-success btn-lg"> 
      <i class="fa-solid fa-cloud-arrow-up"></i> Upload Images </button>
  </a>

    @if ( Auth::user()->role_id == 1)
    <a href="/register" style="color:white;text-decoration:none; float: right; margin-left: 10px;">
      <button type="button" class="btn btn-outline-dark btn-lg">
        <i class="fa-solid fa-circle-plus"></i> Add user </button>
    </a>
    <a href="/admin" style="color:white;text-decoration:none; float: right;">
      <button type="button" class="btn btn-outline-dark btn-lg"> 
        <i class="fa-solid fa-list-ul"></i> All users </button>
    </a>
    @endif

    <table class="table table-striped table-hover border border-dark" style="margin-bottom: 100px;">
        <thead class="table-dark">
          <tr>
            <th scope="col">Year</th>
            <th scope="col">Make</th>
            <th scope="col">Miles</th>
            <th scope="col">Status</th>
            <th scope="col">Program</th>
            <th scope="col">Price</th>
            <th scope="col">Company</th>
            <th scope="col">Notes</th>
            <th scope="col">Action</th>
          </tr>
        </thead>
        <tbody>

        @foreach ($available_trucks as $truck)
          @if($truck->status == "Ready")
            <tr>
              <td> {{$truck->year}} </td>
              <td> {{$truck->id}} {{$truck->make}} {{$truck->model}} </td>
              <td> {{$truck->odometer}} </td>
              <td> <span class="badge rounded-pill bg-success"> {{$truck->status}} </span> </td>
              <td> {{$truck->available_for}} </td>
              <td> ${{ number_format((float)$truck->price, 2, '.', ',') }}</td>
              <td> {{$truck->company}} </td>
              <td class="border border-dark"> {{$truck->notes}} </td>
              <td> <a href="/trucks/{{$truck->id}}-{{$truck->make}}-{{$truck->model}}-{{$truck->year}}/edit" value={{$truck->id}}>
                <button type="button" class="btn btn-warning btn-sm">
                    <i class="fa-solid fa-pen-to-square"> </i><span class="mobile-btn"> Edit </span> 
                </button> </a> </td>
            </tr>

            @elseif($truck->status == "Sold")
            <tr>
              <td> {{$truck->year}} </td>
              <td> {{$truck->id}} {{$truck->make}} {{$truck->model}} </td>
              <td> {{$truck->odometer}} </td>
              <td> <span class="badge rounded-pill bg-danger"> {{$truck->status}} </span> </td>
              <td> {{$truck->available_for}} </td>
              <td> ${{ number_format((float)$truck->price, 2, '.', ',') }}</td>
              <td> {{$truck->company}} </td>
              <td class="border border-dark"> {{$truck->notes}} </td>
              <td> <a href="/trucks/{{$truck->id}}-{{$truck->make}}-{{$truck->model}}-{{$truck->year}}/edit" value={{$truck->id}}>
                <button type="button" class="btn btn-warning btn-sm">
                    <i class="fa-solid fa-pen-to-square"> </i><span class="mobile-btn"> Edit </span> 
                </button> </a> </td>
            </tr>
          
          @elseif($truck->status == "Shop")
            <tr>
              <td> {{$truck->year}} </td>
              {{-- <td> {{$truck->year}} </td> --}}
              <td> {{$truck->id}} {{$truck->make}} {{$truck->model}} </td>
              <td> {{$truck->odometer}} </td>
              <td> <span class="badge rounded-pill bg-warning"> {{$truck->status}} </span> </td>
              <td> {{$truck->available_for}} </td>
              <td> ${{ number_format((float)$truck->price, 2, '.', ',') }}</td>
              <td> {{$truck->company}} </td>
              <td class="border border-dark"> {{$truck->notes}} </td>
              <td> <a href="/trucks/{{$truck->id}}-{{$truck->make}}-{{$truck->model}}-{{$truck->year}}/edit" value={{$truck->id}}>
                <button type="button" class="btn btn-warning btn-sm">
                    <i class="fa-solid fa-pen-to-square"> </i><span class="mobile-btn"> Edit </span> 
                </button> </a> </td>
            </tr>

          @elseif($truck->status == "Wash")
            <tr>
              <td> {{$truck->year}} </td>
              {{-- <td> {{$truck->year}} </td> --}}
              <td> {{$truck->id}} {{$truck->make}} {{$truck->model}} </td>
              <td> {{$truck->odometer}} </td>
              <td> <span class="badge rounded-pill bg-primary"> {{$truck->status}} </span> </td>
              <td> {{$truck->available_for}} </td>
              <td> ${{ number_format((float)$truck->price, 2, '.', ',') }}</td>
              <td> {{$truck->company}} </td>
              <td class="border border-dark"> {{$truck->notes}} </td>
              <td> <a href="/trucks/{{$truck->id}}-{{$truck->make}}-{{$truck->model}}-{{$truck->year}}/edit" value={{$truck->id}}>
                <button type="button" class="btn btn-warning btn-sm">
                    <i class="fa-solid fa-pen-to-square"> </i><span class="mobile-btn"> Edit </span> 
                </button> </a> </td>
            </tr>

          @endif
        @endforeach   

        </tbody>
      </table>

      <h4 style="font-size: 2rem;" class="available_trucks_header"> All Trucks </h4>

      @livewire('trucks')
      
    </div>
@livewireScripts
@endif

@endsection