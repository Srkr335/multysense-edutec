@extends('admin.layouts.admin_app')

@section('content')
<div class="container" style="transform: none;">
    <div class="row" style="transform: none;">
<form action="{{ route('admin.centre.update') }}" method="POST" enctype="multipart/form-data">
    @csrf
    <div class="row align-items-center">
        <div class="col-md-12">
            <div class="add-course-header mb-4 pb-0">
                <h2>Update Centre</h2>
                <div class="add-course-btns">
                    <ul class="nav">
                        <li>
                            <a href="{{ route('centre.index') }}" class="btn btn-black">Back to centre</a>
                        </li>
                        <li>
                            <button type="submit" class="btn btn-success-dark">Save</button>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="col-xl-12 col-md-12">
        <div class=" profile-details">
            <div class="settings-menu p-0">

                <div class="checkout-form personal-address add-course-info ">

                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label class="form-control-label">Centre Name</label>
                                <input type="hidden" name="centre_id" value="{{$centre->id}}">
                                <input type="hidden" name="user_id" value="{{$centre->user_id}}">
                                <input type="text" class="form-control" placeholder="Enter your Centre Name"
                                    name="centre_name" value="{{$centre->name}}">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label class="form-control-label">Website</label>
                                <input type="text" class="form-control" placeholder="Enter your website" name="website"
                                    id="website" value="{{$centre->website}}">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label class="form-control-label">Address</label>
                                <input type="text" class="form-control" placeholder="Enter your Centre Address"
                                    name="address" id="address" value="{{$centre->address}}">
                            </div>
                        </div>
                        <div class="col-lg-6">
                        <div class="form-group">
                            <label class="form-control-label">District</label>
                            <select name="district" class="form-control" required>
                                <option value="">-- Select District --</option>
                                <option value="01" {{ $centre->district == 'Thiruvananthapuram' ? 'selected' : '' }}>Thiruvananthapuram</option>
                                <option value="02" {{ $centre->district == 'Kollam' ? 'selected' : '' }}>Kollam</option>
                                <option value="03" {{ $centre->district == 'Pathanamthitta' ? 'selected' : '' }}>Pathanamthitta</option>
                                <option value="04" {{ $centre->district == 'Alappuzha' ? 'selected' : '' }}>Alappuzha</option>
                                <option value="05" {{ $centre->district == 'Kottayam' ? 'selected' : '' }}>Kottayam</option>
                                <option value="06" {{ $centre->district == 'Idukki' ? 'selected' : '' }}>Idukki</option>
                                <option value="07" {{ $centre->district == 'Ernakulam' ? 'selected' : '' }}>Ernakulam</option>
                                <option value="08" {{ $centre->district == 'Thrissur' ? 'selected' : '' }}>Thrissur</option>
                                <option value="09" {{ $centre->district == 'Palakkad' ? 'selected' : '' }}>Palakkad</option>
                                <option value="10" {{ $centre->district == 'Malappuram' ? 'selected' : '' }}>Malappuram</option>
                                <option value="11" {{ $centre->district == 'Kozhikode' ? 'selected' : '' }}>Kozhikode</option>
                                <option value="12" {{ $centre->district == 'Wayanad' ? 'selected' : '' }}>Wayanad</option>
                                <option value="13" {{ $centre->district == 'Kannur' ? 'selected' : '' }}>Kannur</option>
                                <option value="14" {{ $centre->district == 'Kasaragod' ? 'selected' : '' }}>Kasaragod</option>
                            </select>

                        </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label class="form-control-label">City</label>
                                <input type="text" class="form-control" placeholder="Enter your City" name="city"
                                    value="{{$centre->city}}">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label class="form-control-label">Pincode</label>
                                <input type="text" class="form-control" placeholder="Enter your Pincode" name="zipcode"
                                    value="{{$centre->pincode}}">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label class="form-control-label">Phone</label>
                                <input type="text" class="form-control" placeholder="Enter your Phone" name="phone"
                                    value="{{$centre->mobile}}">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label class="form-control-label">Email</label>
                                <input type="email" class="form-control" placeholder="Enter your Email" name="email"
                                    value="{{$centre->email}}">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label class="form-control-label">Password</label>
                                <input type="password" class="form-control" placeholder="Enter password" name="password"
                                    value="">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label class="form-control-label">Centre Incharge</label>
                                <select class="form-control" name="centre_incharge" id="centre_incharge">
                                    <option value="0">Select</option>
                                    @foreach($users as $user)
                                    <option value="{{ $user->id }}" {{$centre->admin ==  $user->id ? 'selected' : ''}}>
                                        {{ $user->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label class="form-control-label">Status</label>
                                <select class="form-control" name="status" id="status">
                                    <option>select</option>
                                    <option value="1" {{$centre->status ==  1 ? 'selected' : ''}}>Active</option>
                                    <option value="0" {{$centre->status ==  0 ? 'selected' : ''}}>Inactive</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
</div>
</div>
@endsection