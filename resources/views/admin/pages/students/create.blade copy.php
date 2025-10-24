@extends('admin.layouts.admin_app')

@section('content')
<div class="container">
    <div class="row">
        <form method="POST" action="{{ route('admin.student.store') }}" enctype="multipart/form-data">
            @csrf

            {{-- Header Section --}}
            <div class="row align-items-center">
                <div class="col-md-12">
                    <div class="add-course-header pb-0">
                        <h2>Add New Student</h2>
                        <div class="add-course-btns">
                            <ul class="nav">
                                <li><a href="{{ route('admin.student.index') }}" class="btn btn-black">Back to Students</a></li>
                                <li><button type="submit" class="btn btn-success-dark">Save</button></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            {{-- Profile Image Upload --}}
            <div class="col-xl-12 col-md-12">
                <div class="profile-details">
                    <div class="page-banner student-bg-blk bg-white">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12 d-flex justify-content-center">
                                    <div class="course-name d-flex align-items-center">
                                        <div class="form-group">
                                            <div class="profile-image-circle">
                                                <img id="ImagePreview" class="h-100 Profile-img" src="">
                                            </div>
                                        </div>
                                        <div class="upload-profile-icon">
                                            <label style="cursor: pointer;">
                                                <img src="{{ asset('img/new-icons/upload.png') }}" alt="">
                                                <input type="file" name="image" class="InputFile" id="myFile"
                                                    onchange="document.getElementById('ImagePreview').src = window.URL.createObjectURL(this.files[0])">
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    {{-- Personal Details --}}
                    <div class="checkout-form personal-address add-course-info">
                        <div class="personal-info-head">
                            <h4>Personal Details</h4>
                        </div>
                        <div class="row">

                            {{-- Name --}}
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label">Name</label>
                                    <input type="text" class="form-control" placeholder="Enter Name" name="name" required>
                                </div>
                            </div>

                            {{-- Scheme --}}
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label">Scheme</label>
                                    <select class="form-control" name="scheme" id="scheme_id">
                                        <option value="">Select Scheme</option>
                                        @foreach($schemes as $scheme)
                                        <option value="{{ $scheme->id }}">{{ $scheme->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            {{-- Category --}}
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label">Category</label>
                                    <select name="category" id="category_id" class="form-control">
                                        <option value="">Select Category</option>
                                    </select>
                                </div>
                            </div>

                            {{-- Course --}}
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label">Course</label>
                                    <select class="form-control" name="course" id="course_id">
                                        <option value="">Select Course</option>
                                    </select>
                                </div>
                            </div>

                            {{-- Hidden fields for backend use --}}
                            <input type="hidden" name="course_fee" id="course_fee_hidden">
                            <input type="hidden" name="course_installment" id="course_installment">

                            {{-- Total Course Fee --}}
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label">Total Course Fee</label>
                                    <input type="text" id="total_course_fee" class="form-control" readonly>
                                </div>
                            </div>

                            {{-- Discount Percentage --}}
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label">Discount (%)</label>
                                    <input type="number" class="form-control" name="discount_percentage" id="discount_percentage">
                                </div>
                            </div>

                            {{-- Discount Amount --}}
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label">Discount Amount</label>
                                    <input type="text" class="form-control" id="discount_amount" readonly>
                                </div>
                            </div>

                            {{-- Total After Discount --}}
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label">Total After Discount</label>
                                    <input type="text" class="form-control" id="total_after_discount" readonly>
                                </div>
                            </div>

                            {{-- Total Fee with GST (18%) --}}
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label">Total Fee (with GST 18%)</label>
                                    <input type="text" class="form-control" id="total_with_gst" readonly>
                                </div>
                            </div>

                            {{-- Centre --}}
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label">Centre</label>
                                    <select class="form-control" name="centre" id="centre_id">
                                        <option value="">Select Centre</option>
                                    </select>
                                </div>
                            </div>

                            {{-- Batch --}}
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label">Batch</label>
                                    <select class="form-control" name="batch" id="batch_id">
                                        <option value="">Select Batch</option>
                                    </select>
                                </div>
                            </div>

                            {{-- Phone --}}
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label">Phone</label>
                                    <input type="text" class="form-control" placeholder="Enter your Phone" name="phone">
                                </div>
                            </div>

                            {{-- Email --}}
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label">Email</label>
                                    <input type="text" class="form-control" placeholder="Enter your Email" name="email" required>
                                    <small class="text-warning">{{ $errors->first('email') }}</small>
                                </div>
                            </div>

                            {{-- Birthday --}}
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label">Birthday</label>
                                    <input type="date" class="form-control" name="b_day">
                                </div>
                            </div>

                            {{-- Country --}}
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-label">Country</label>
                                    <select class="form-select select country-select" name="country">
                                        <option>Select country</option>
                                        @foreach ($countries as $country)
                                        <option value="{{ $country->id }}" @if($country->name == 'India') selected @endif>{{ $country->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            {{-- Address --}}
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label">Address Line 1</label>
                                    <input type="text" class="form-control" name="address_1">
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label">Address Line 2</label>
                                    <input type="text" class="form-control" name="address_2">
                                </div>
                            </div>

                            {{-- City --}}
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label">City</label>
                                    <input type="text" class="form-control" name="city">
                                </div>
                            </div>

                            {{-- PinCode --}}
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label">Pin Code</label>
                                    <input type="number" class="form-control" name="zipcode">
                                </div>
                            </div>

                            {{-- Password --}}
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label">Password</label>
                                    <input type="password" class="form-control" name="password" autocomplete="new-password">
                                </div>
                            </div>

                            {{-- Status --}}
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label class="form-control-label">Status</label>
                                    <select class="form-control" name="status">
                                        <option value="1">Active</option>
                                        <option value="0">In-Active</option>
                                    </select>
                                </div>
                            </div>

                        </div> {{-- End Row --}}
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>

{{-- JavaScript Section --}}
<script>
    // Dropdown Change Events
    $('#scheme_id').change(getCategory);
    $('#category_id').change(getCourse);
    $('#course_id').change(getCentre);
    $('#centre_id').change(getBatch);

    // ------------------ AJAX FUNCTIONS ------------------ //
    function getCategory() {
        let schemeId = $('#scheme_id').val();
        if (!schemeId) {
            $('#category_id').html('<option value="">Select Category</option>');
            return;
        }

        $.ajax({
            url: "{{ route('admin.student.select_category') }}",
            method: "GET",
            data: { scheme_id: schemeId },
            success: function(res) {
                let options = '<option value="">Select Category</option>';
                res.forEach(cat => {
                    options += `<option value="${cat.id}">${cat.name}</option>`;
                });
                $('#category_id').html(options);
            },
            error: err => console.error(err)
        });
    }

    function getCourse() {
        let categoryId = $('#category_id').val();
        let schemeId = $('#scheme_id').val();

        if (!categoryId || !schemeId) {
            $('#course_id').html('<option value="">Select Course</option>');
            $('#total_course_fee').val('');
            return;
        }

        $.ajax({
            url: "{{ route('admin.student.select_course') }}",
            method: "GET",
            data: { cat_id: categoryId, scheme_id: schemeId },
            success: function(res) {
                let options = '<option value="">Select Course</option>';
                res.forEach(item => {
                    options += `<option value="${item.course.id}">${item.course.title}</option>`;
                });
                $('#course_id').html(options);

                // Bind change event for fee update
                $('#course_id').off('change').on('change', function() {
                    let selectedId = $(this).val();
                    let selected = res.find(item => item.course.id == selectedId);

                    if (selected) {
                        let fee = selected.course.fees || 0;
                        let installment = selected.course.installment || 0;

                        $('#total_course_fee').val('₹ ' + parseFloat(fee).toLocaleString('en-IN'));
                        $('#course_fee_hidden').val(fee);
                        $('#course_installment').val(installment);

                        calculateTotals();
                    } else {
                        $('#total_course_fee').val('');
                        $('#course_fee_hidden').val('');
                        $('#course_installment').val('');
                    }
                });
            },
            error: err => console.error(err)
        });
    }

    function getCentre() {
        let courseId = $('#course_id').val();
        if (!courseId) return;

        $.ajax({
            url: "{{ route('admin.student.select_centre') }}",
            method: "GET",
            data: { course_id: courseId },
            success: function(res) {
                let options = '<option value="">Select Centre</option>';
                res.forEach(item => {
                    options += `<option value="${item.centre.id}">${item.centre.name}</option>`;
                });
                $('#centre_id').html(options);
            },
            error: err => console.error(err)
        });
    }

    function getBatch() {
        let centreId = $('#centre_id').val();
        if (!centreId) return;

        $.ajax({
            url: "{{ route('admin.student.select_batch') }}",
            method: "GET",
            data: { centre_id: centreId },
            success: function(res) {
                let options = '<option value="">Select Batch</option>';
                res.forEach(b => {
                    options += `<option value="${b.id}">${b.name}</option>`;
                });
                $('#batch_id').html(options);
            },
            error: err => console.error(err)
        });
    }

    // ------------------ FEE CALCULATIONS ------------------ //
    $('#discount_percentage').on('input', calculateTotals);

    function calculateTotals() {
        let fee = parseFloat($('#course_fee_hidden').val()) || 0;
        let discountPercent = parseFloat($('#discount_percentage').val()) || 0;

        let discountAmt = (fee * discountPercent) / 100;
        let totalAfterDiscount = fee - discountAmt;
        let gst = totalAfterDiscount * 0.18;
        let totalWithGst = totalAfterDiscount + gst;

        $('#discount_amount').val(discountAmt.toFixed(2));
        $('#total_after_discount').val(totalAfterDiscount.toFixed(2));
        $('#total_with_gst').val(totalWithGst.toFixed(2));
    }
</script>
@endsection
