<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Truck;

class Trucks extends Component
{
    public $searchTerm = "";
    public $trucks;
    public function render()
    {   
        if (empty($this->searchTerm)) {
            $this->trucks = Truck::orderBy('id','asc')->where('available','=', 'NO')->get();
        } else {
            $this->trucks = Truck::where('id', 'like', '%'.$this->searchTerm.'%')
            ->where('available','=', 'NO')->get();
        }
        return view('livewire.trucks');
    }
}