@extends('admin.layouts.admin_app')

@section('content')
    <div class="container-fluid">
      <form id="studentForm" action="{{ route('admin.student.update', $student->id) }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="row align-items-center mb-4">
                <div class="col-md-12 d-flex justify-content-between align-items-center">
                    <h2>Edit Student</h2>
                    <!-- <div>
                        <a href="{{ route('admin.student.index') }}" class="btn btn-secondary me-2">Back to Students</a>
                        <button type="submit" class="btn btn-primary">Save</button>
                    </div> -->
                </div>
            </div>

            {{-- Profile image section --}}
           <div class="card mb-4">
    <div class="page-banner student-bg-blk bg-white">
        <div class="container">
            <div class="card-body d-flex flex-column align-items-center justify-content-center text-center">
                <div class="mb-3">
                    <img id="ImagePreview"
                         src="{{ asset('/images/student/' . $student->image) }}"
                         class="rounded-circle border"
                         style="width: 120px; height: 120px; object-fit: cover;">
                </div>
                <div>
                    <label class="btn btn-outline-primary mb-0">
                        Upload Image
                        <input type="file" name="image" class="d-none"
                               onchange="document.getElementById('ImagePreview').src = window.URL.createObjectURL(this.files[0])">
                    </label>
                </div>
            </div>
        </div>
    </div>
</div>

            {{-- Personal Information --}}
           <div class="col-lg-6">
    <div class="form-group">
        <label class="form-control-label">Registration Number</label>
        <input type="text" class="form-control" name="register_no"
               value="{{ $student->reg_no }}"readonly>
    </div>
</div>
                <div class="card-body">
                    <div class="row g-3">
                        <div class="col-lg-6">
                            <label class="form-label">Name</label>
                            <input type="text" class="form-control" name="name" value="{{ $student->user->name }}">
                        </div>

                        <div class="col-lg-6">
                            <label class="form-label">Phone</label>
                            <input type="text" class="form-control" name="phone" value="{{ $student->mobile_no }}">
                        </div>

                        <div class="col-lg-6">
                            <label class="form-label">Email</label>
                            <input type="text" class="form-control" name="email" value="{{ $student->user->email }}">
                        </div>

                        <div class="col-lg-6">
                            <label class="form-label">Birthday</label>
                            <input type="date" class="form-control" name="b_day" value="{{ $student->dob }}">
                        </div>

                        <div class="col-lg-6">
                            <label class="form-label">Course</label>
                            <select class="form-control" name="course">
                                <option value="">Select Course</option>
                                @foreach($courses as $course)
                                    <option value="{{ $course->id }}" {{ $purchasedCousers->course_id == $course->id ? 'selected' : '' }}>
                                        {{ $course->title }}
                                    </option>
                                @endforeach
                            </select>
                        </div>

                        <div class="col-lg-3">
                            <label class="form-label">Course Fee</label>
                            <input type="text" name="course_fee" value="{{@$purchasedCousers->coursedtls->fees}}">
                        </div>

                        <div class="col-lg-3">
                            <label class="form-label">Installment</label>
                                            <input type="text" name="course_installment" value="{{@$purchasedCousers->coursedtls->installment}}">
                        </div>

                        <div class="col-lg-6">
                            <label class="form-label">Batch</label>
                            <select class="form-control" name="batch" id="batchDropdown">
                                <option value="">Select Batch</option>
                            </select>

                        </div>

                        <div class="col-lg-6">
                            <label class="form-label">Country</label>
                            <select class="form-select" name="country">
                                <option>Select Country</option>
                                @foreach($countries as $country)
                                    <option value="{{ $country->id }}" {{ $student->country_id == $country->id ? 'selected' : '' }}>
                                        {{ $country->name }}
                                    </option>
                                @endforeach
                            </select>
                        </div>

                        <div class="col-lg-6">
                            <label class="form-label">Address Line 1</label>
                            <input type="text" class="form-control" name="address_1" value="{{ $student->address_1 }}">
                        </div>

                        <div class="col-lg-6">
                            <label class="form-label">Address Line 2</label>
                            <input type="text" class="form-control" name="address_2" value="{{ $student->address_2 }}">
                        </div>

                        <div class="col-lg-6">
                            <label class="form-label">City</label>
                            <input type="text" class="form-control" name="city" value="{{ $student->city }}">
                        </div>

                        <div class="col-lg-6">
                            <label class="form-label">Pincode</label>
                            <input type="text" class="form-control" name="zipcode" value="{{ $student->pincode }}">
                        </div>

                        <div class="col-lg-6">
                            <label class="form-label">Password</label>
                            <input type="password" class="form-control" name="password">
                        </div>

                        <div class="col-lg-6">
                            <label class="form-label">Status</label>
                            <select class="form-control" name="status">
                                <option value="1" {{ $student->status == 1 ? 'selected' : '' }}>Active</option>
                                <option value="0" {{ $student->status == 0 ? 'selected' : '' }}>Inactive</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
        </form>
      
<div class="add-course-btns mt-3">
    <ul class="nav">
        <li><a href="{{ route('admin.student.index') }}" class="btn btn-black">Back to Students</a></li>
        <li><button type="submit" class="btn btn-success-dark" form="studentForm">Save</button></li>
    </ul>
</div>
    </div>

@push('scripts')
<script>
    $(document).ready(function () {
        function fetchBatches(courseId, selectedBatchId = null) {
            $.ajax({
                url: "{{ route('admin.course.batches') }}",
                method: 'GET',
                data: { course_id: courseId },
                success: function (data) {
                    let options = `<option value="">Select Batch</option>`;
                    $.each(data.batches, function (index, batch) {
                        options += `<option value="${batch.id}" ${batch.id == selectedBatchId ? 'selected' : ''}>${batch.name}</option>`;
                    });
                    $('#batchDropdown').html(options);
                }
            });
        }

        const courseDropdown = $('select[name="course"]');
        const initialCourseId = courseDropdown.val();
        const selectedBatchId = "{{ $student->batch_id }}";

        if (initialCourseId) {
            fetchBatches(initialCourseId, selectedBatchId);
        }

        courseDropdown.on('change', function () {
            fetchBatches($(this).val());
        });
    });
</script>
@endpush



@endsection