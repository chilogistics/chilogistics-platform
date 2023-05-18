@extends('layouts.app')
@section('main')

@if ( Auth::user())
@if ( auth()->user()->role_id == 1)

<div class="admin container">
    <h4>List of all users</h4>
    <table class="table table-striped">
        <thead class="table-dark">
            <tr>
                {{-- <th scope="col">ID</th> --}}
                <th scope="col">Name</th>
                <th scope="col">Email</th>
                <th scope="col">Role</th>
                <th scope="col">Action</th>
            </tr>
        </thead>
        <tbody>

            @foreach ($users as $user)
            <tr>
                {{-- <th scope="row" style=""> {{$user->id}} </th> --}}
                <td> {{$user->name}} </td>
                <td> {{$user->email}} </td>
                <td> {{$user->role}} </td>
                <td>
                    <button type="button"  data-target="#exampleModal{{$user->id}}" class="btn btn-danger" data-toggle="modal">
                        <i class="fa-solid fa-trash-can"></i> <span class="mobile-btn"> Delete </span>
                    </button>

                    @include('components.modal.user-delete')

                    {{-- <form method="POST" action="{{ route('admin.destroy', $user->id) }}">
                        @csrf
                        {{ method_field('DELETE') }}
                        <button type="submit" class="btn btn-danger">Delete</button>
                    </form> --}}
                </td>
            </tr>
            @endforeach

        </tbody>
    </table>

</div>

@endif
@endif

@endsection