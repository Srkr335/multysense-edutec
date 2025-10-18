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
                                        <select name="category" id="category_id" class="form-control" multiple>
                                            <option value="">Choose Category</option>
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
                                        <input type="hidden" name="course_fee" id="course_fee">
                                        <input type="hidden" name="course_installment" id="course_installment">
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

                                {{-- Address 1 --}}
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label class="form-control-label">Address Line 1</label>
                                        <input type="text" class="form-control" name="address_1">
                                    </div>
                                </div>

                                {{-- Address 2 --}}
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

                                {{-- PinCode--}}
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label class="form-control-label">PinCode</label>
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

    <script>
        $('#scheme_id').change(function() {
            getCategory();
        });
        $('#category_id').change(function() {
            getCourse();
        });
        $('#course_id').change(function() {
            getCentre();
        });
        $('#centre_id').change(function() {
            getBatch();
        });

    function previewImage(event) {
        const imagePreview = document.getElementById('imagePreview');
        const file = event.target.files[0];

        if (file) {
            imagePreview.src = URL.createObjectURL(file);
            imagePreview.style.display = 'block';
        } else {
            imagePreview.style.display = 'none';
            imagePreview.src = '';
        }
    }

       function getCategory() {
    var schemeId = $('#scheme_id').val();

    if (!schemeId) {
        $('#category_id').html('<option value="">Choose Category</option>');
        return;
    }

    $.ajax({
        url: "{{ route('admin.student.select_category') }}",
        method: "get",
        headers: { 'X-CSRF-TOKEN': '{{ csrf_token() }}' },
        data: { scheme_id: schemeId },
        success: function(res) {
            console.log(res);
            var options = '<option value="">-- Select Category --</option>';
            res.forEach(function(category) {
                options += '<option value="' + category.id + '">' + category.name + '</option>';
            });
            $('#category_id').html(options);
        },
        error: function(err) {
            console.error(err);
        }
    });
}

    function getCourse() {
        var categoryId = $('#category_id').val();
        var schemeId = $('#scheme_id').val();

        if (!categoryId || !schemeId) {
            // If category or scheme is not selected, clear course dropdown and fee fields
            $('#course_id').html('<option value="">Choose Course</option>');
            $('#course_fee').val('');
            $('#course_installment').val('');
            return;
        }

        $.ajax({
            url: "{{ route('admin.student.select_course') }}",
            method: "GET",
            headers: {
                'X-CSRF-TOKEN': '{{ csrf_token() }}'
            },
            data: {
                cat_id: categoryId,
                scheme_id: schemeId
            },
            success: function (res) {
                console.log(res);
                var options = '<option value="">-- Select Course --</option>';

                res.forEach(function (data) {
                    options += '<option value="' + data.course.id + '">' + data.course.title + '</option>';
                });

                $('#course_id').html(options);

                // Bind change event only once
                $('#course_id').off('change').on('change', function () {
                    var selectedCourseId = $(this).val();
                    var selectedCourse = res.find(function (data) {
                        return data.course.id == selectedCourseId;
                    });

                    if (selectedCourse) {
                        $('#course_fee').val(selectedCourse.course.fees || '');
                        $('#course_installment').val(selectedCourse.course.installment || '');
                    } else {
                        $('#course_fee').val('');
                        $('#course_installment').val('');
                    }
                });
            },
            error: function (err) {
                console.error("Course fetch failed:", err);
            }
        });
    }



        function getCentre() {
            var role = {!! auth()->user()->roles[0]->id !!};

            var courseId = $('#course_id').val();
            if (!courseId) {
                // Clear the categories dropdown if no scheme is selected
                $('#centre_id').html('<option value="">Choose Course</option>');
                return;
            }

            $.ajax({
                url: "{{ route('admin.student.select_centre') }}",
                method: "get",
                headers: {
                    'X-CSRF-TOKEN': '{{ csrf_token() }}'
                },
                data: {
                    course_id: courseId,
                },
                success: function(res) {
                    console.log(res);
                    var options = '<option value="">-- Select --</option>';
                    if (role == 2) {

                        res.forEach(function(data) {
                            var centreId = {!! auth()->user()->centre ? auth()->user()->centre->id : 0 !!};
                            if (centreId == data.centre.id) {
                                options += '<option value="' + data.centre.id + '">' + data.centre.name +
                                    '</option>';
                                console.log(options);
                            }

                        });
                    } else {

                        res.forEach(function(data) {
                            options += '<option value="' + data.centre.id + '">' + data.centre.name +
                                '</option>';
                        });
                    }
                    $('#centre_id').html(options);

                },
                error: function(err) {
                    console.error(err);
                }
            });
        }


        function getBatch() {
            var centreId = $('#centre_id').val();

            if (!centreId) {
                // Clear the categories dropdown if no scheme is selected
                $('#batch_id').html('<option value="">Choose Course</option>');
                return;
            }

            $.ajax({
                url: "{{ route('admin.student.select_batch') }}",
                method: "get",
                headers: {
                    'X-CSRF-TOKEN': '{{ csrf_token() }}'
                },
                data: {
                    centre_id: centreId,
                },
                success: function(res) {
                    console.log(res);
                    var options = '<option value="">-- Select --</option>';
                    res.forEach(function(data) {
                        options += '<option value="' + data.id + '">' + data.name + '</option>';
                    });
                    $('#batch_id').html(options);
                },
                error: function(err) {
                    console.error(err);
                }
            });
        }
    </script>
    @endsection