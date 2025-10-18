@extends('admin.layouts.admin_app')

@section('content')
<div class="container">
    <div class="row">
        <form action="{{ route('admin.payment.store') }}" method="POST" enctype="multipart/form-data">
            @csrf

            {{-- Header --}}
            <div class="row align-items-center">
                <div class="col-md-12">
                    <div class="add-course-header pb-0">
                        <h2>Add Payment</h2>
                        <div class="add-course-btns">
                            <ul class="nav">
                                <li>
                                    <a href="{{ route('admin.payment.index') }}" class="btn btn-black">Back to Payments</a>
                                </li>
                                <li>
                                    <button type="submit" class="btn btn-success-dark">Save</button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            {{-- Form Fields --}}
            <div class="col-xl-12 col-md-12">
                <div class="profile-details">
                    <div class="settings-menu p-0">
                        <div class="checkout-form personal-address add-course-info">
                            <div class="row">

                                {{-- Students --}}
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label class="form-control-label">Students</label>
                                        <select class="form-select multiple" name="students[]" id="student_id" required>
                                            <option value="">Select Students</option>
                                            @foreach ($students as $student)
                                                <option value="{{ $student->id }}">
                                                    {{ $student->user->name.' ['.$student->reg_no.']' }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>

                                {{-- Courses --}}
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label class="form-control-label">Courses</label>
                                        <select name="course" id="course_id" class="form-select" required>
                                            <option value="">Select Course</option>
                                        </select>
                                    </div>
                                </div>

                                {{-- Amount --}}
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label class="form-control-label">Amount</label>
                                        <input type="number" class="form-control" placeholder="Enter amount" name="amount" required>
                                    </div>
                                </div>

                                {{-- Month --}}
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label class="form-control-label">Month</label>
                                        <select class="form-select" name="month" required>
                                            <option value="">Select month</option>
                                            @foreach ($months as $key => $value)
                                                <option value="{{ $key }}">{{ $value }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>

                                {{-- End Date --}}
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label class="form-control-label">End Date</label>
                                        <input type="date" class="form-control" name="end_date" required>
                                    </div>
                                </div>

                                {{-- Status --}}
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label class="form-control-label">Status</label>
                                        <select class="form-select" name="status">
                                            <option value="1">Active</option>
                                            <option value="0">Inactive</option>
                                        </select>
                                    </div>
                                </div>

                            </div> {{-- row --}}
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>

{{-- Script --}}
<script>
    // Initialize select2
    $('.multiple').select2();

    // On student change, fetch courses
    $('#student_id').change(function () {
        getCourseList();
    });

    function getCourseList() {
        var studentId = $('#student_id').val();
        $('#course_id').html('<option>Loading...</option>');

        if (!studentId || studentId.length === 0) {
            $('#course_id').html('<option value="">Select Course</option>');
            return;
        }

        $.ajax({
            url: "{{ route('admin.student.courses') }}",
            type: "GET",
            data: { student_id: studentId },
            success: function (res) {
                if (!res || res.length === 0) {
                    $('#course_id').html('<option value="">No courses found</option>');
                    return;
                }

                var html = '<option value="">Select Course</option>';
                res.forEach(function (course) {
                    html += `<option value="${course.id}">${course.title}</option>`;
                });

                $('#course_id').html(html);
            },
            error: function () {
                $('#course_id').html('<option value="">Error loading courses</option>');
            }
        });
    }
</script>
@endsection
