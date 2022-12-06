@extends('admin.admin_master')
@section('admin')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<div class="page-content">
<div class="container-fluid">

<div class="row">
<div class="col-12">
<div class="card">
    <div class="card-body">

        <h4 class="card-title">Footer Page</h4>
        <form method="POST" action="{{ route('update.footer')}}" >
            @csrf

            <input type="hidden" name="id"  value="{{ $allfooter->id }}">
            <div class="row mb-3">
            <label for="example-text-input" class="col-sm-2 col-form-label">Number</label>
            <div class="col-sm-10">
                <input class="form-control" name="number" type="text" value="{{ $allfooter->number }}" id="example-text-input">
            </div>
        </div>
        
        <!-- end row -->
        <div class="row mb-3">
            <label for="example-text-input" class="col-sm-2 col-form-label">Short Description</label>
            <div class="col-sm-10">
                <textarea required="" name="short_description" class="form-control" rows="5">{{ $allfooter->short_description }}</textarea>
            </div>
        </div>

        <!-- end row -->

         <div class="row mb-3">
            <label for="example-text-input" class="col-sm-2 col-form-label">Address</label>
            <div class="col-sm-10">
                <input class="form-control" name="address" type="text" value="{{ $allfooter->address}}" id="example-text-input">
            </div>
        </div>

         <div class="row mb-3">
            <label for="example-text-input" class="col-sm-2 col-form-label">Email</label>
            <div class="col-sm-10">
                <input class="form-control" name="email" type="email" value="{{ $allfooter->email }}" id="example-text-input">
            </div>
        </div>

         <div class="row mb-3">
            <label for="example-text-input" class="col-sm-2 col-form-label">Facebook</label>
            <div class="col-sm-10">
                <input class="form-control" name="facebook" type="text" value="{{ $allfooter->facebook }}" id="example-text-input">
            </div>
        </div>

        <div class="row mb-3">
            <label for="example-text-input" class="col-sm-2 col-form-label">Twitter</label>
            <div class="col-sm-10">
                <input class="form-control" name="twiter" type="text" value="{{ $allfooter->twiter }}" id="example-text-input">
            </div>
        </div>

         <div class="row mb-3">
            <label for="example-text-input" class="col-sm-2 col-form-label">Copyright</label>
            <div class="col-sm-10">
                <input class="form-control" name="copyright" type="text" value="{{ $allfooter->copyright }}" id="example-text-input">
            </div>
        </div>


        <input type="submit" class="btn btn-info waves-effect waves-light" value="Update Footer Page">
        </form>
    </div>
</div>
</div> <!-- end col -->
</div>




</div>
</div>

@endsection