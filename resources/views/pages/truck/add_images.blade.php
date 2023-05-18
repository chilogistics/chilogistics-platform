@extends('layouts.app')
@section('main')

@if ( Auth::user())

<div class="container-fluid">
    <div class="row">
        <div class="app-bg">
            <form class="upload-form" id="upload" enctype="multipart/form-data" action="{{action('App\Http\Controllers\ImagesController@store')}}" method="post">
                @csrf

                @if(Session::get('success'))
                    <x-alert-Success/>
                @endif

                @if(Session::get('fail'))
                    <x-alert-Fail/>
                @endif

                @csrf
                <input type="file" name="image" id="image" multiple="multiple" required/>

                <select name="truck_number" required>
                    <option>Select Truck </option>
                    @foreach ($trucks as $truck)
                        <option value={{$truck->id}}> {{$truck->id}} </option>
                    @endforeach
                </select>

                <div class="form-field">
                    <button class="login-submit" type="submit">
                        <i class="fa-solid fa-circle-plus"></i> Upload image
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>



@endif

@endsection