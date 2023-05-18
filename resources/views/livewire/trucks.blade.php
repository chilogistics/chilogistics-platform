<div style="all_trucks margin-bottom: 20px;">
    {{-- <form class="form-inline" style="margin-bottom: 20px;">
      <input class="mr-sm-2 livewire"
       wire:model="searchTerm" placeholder="Type in truck number"> --}}
       
       <div class="input-group mb-3 mx-auto" style="width: 300px;">
        <span class="input-group-text" id="basic-addon1">
          <i class="fa-solid fa-magnifying-glass icon"></i>
        </span>
        <input type="text" class="form-control shadow-none" 
        wire:model="searchTerm" placeholder="Search truck by number" aria-describedby="basic-addon1">
      </div>

    </form>
    <table class="table table-striped table-hover border border-light">
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
    @if($trucks && $trucks->count() >0)

        <tbody>

        @foreach ($trucks as $truck)
        @if($truck->available == "NO")
          <tr>
            <td> {{$truck->year}} </td>
            <td> {{$truck->id}} {{$truck->make}} {{$truck->model}} </td>
            <td> {{$truck->odometer}} </td>
            <td> <span class="badge rounded-pill bg-dark"> {{$truck->status}} </span> </td>
            <td> {{$truck->available_for}} </td>
            <td> ${{ number_format((float)$truck->price, 2, '.', ',') }}  </td>
            <td> {{$truck->company}} </td>
            <td> {{$truck->notes}} </td>
            <td> <a href="/trucks/{{$truck->id}}-{{$truck->make}}-{{$truck->model}}-{{$truck->year}}/edit" > 
              <button type="button" class="btn btn-sm btn-warning">
              <i class="fa-solid fa-pen-to-square"> </i> <span class="mobile-btn"> Edit</button> </span> 
            </a> </td>
          </tr>
          @endif
        @endforeach   

        </tbody>
      </table>
@endif
  </div>