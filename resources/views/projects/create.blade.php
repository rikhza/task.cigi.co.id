<form class="" method="post" action="{{ route('projects.store',$currentWorkspace->slug) }}">
    @csrf
     <div class="modal-body">
    <div class="row">
        <div class="form-group col-md-12">
            <label for="projectname" class="col-form-label">{{ __('Name') }}</label>
            <input class="form-control" type="text" id="projectname" name="name" required="" placeholder="{{ __('Project Name') }}">
        </div>
        <div class="form-group col-md-12">
            <label for="description" class="col-form-label">{{ __('Description') }}</label>
            <textarea class="form-control" id="description" name="description" required="" placeholder="{{ __('Add Description') }}"></textarea>
        </div>
        <div class="col-md-12">
            <label for="users_list" class="col-form-label">{{ __('Users') }}</label>
            <select class=" multi-select" id="users_list" name="users_list[]" data-toggle="select2" multiple="multiple" data-placeholder="{{ __('Select Users ...') }}">
                @foreach($currentWorkspace->users($currentWorkspace->created_by) as $user)
                    <option value="{{$user->email}}">{{$user->name}} - {{$user->email}}</option>
                @endforeach
            </select>
        </div>
    </div>
</div>
        <div class="modal-footer">
            <button type="button" class="btn  btn-light" data-bs-dismiss="modal">{{ __('Close')}}</button>
            <input type="submit" value="{{ __('Add New project')}}" class="btn  btn-primary">
        </div>
    
</form>
