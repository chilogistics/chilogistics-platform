<form method="POST" action="{{ route('admin.destroy', $user->id) }}">
    @csrf
    {{ method_field('DELETE') }}
<div class="modal fade" id="exampleModal{{$user->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel" style="font-size:25px">You're about to delete user</h5>
          <button type="button" class="btn-close btn-sm" data-dismiss="modal" aria-label="Close">
            {{-- <span aria-hidden="true">&times;</span> --}}
          </button>
        </div>

        <div class="modal-body">
          <div class="alert alert-danger" style="width: 100%; margin: 0px;" role="alert">
            Do you really want to delete user {{$user->name}}? <br>
            User will be permanently deleted and this action cannot be undone! 
          </div>
        </div>
        <div class="modal-footer">
            
                
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <button type="submit" class="btn btn-danger">Delete</button>
        
        </div>
      </div>
    </div>
  </div>
</form>