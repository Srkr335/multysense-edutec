@extends('admin.layouts.admin_app')

@section('content')
<div class="container" style="transform: none;">
    <div class="row" style="transform: none;">

<form action="{{ route('scheme.store') }}" method="POST" enctype="multipart/form-data">
    @csrf
    <div class="row align-items-center">
        <div class="col-md-12">
            <div class="add-course-header mb-4 pb-0">
                <h2>Add Schemes</h2>
                <div class="add-course-btns">
                    <ul class="nav">
                        <li>
                            <a href="{{ route('scheme.index') }}" class="btn btn-black">Back to Scheme</a>
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
        <div class="profile-details">
            <div class="settings-menu p-0">
                <div class="checkout-form personal-address add-course-info">
                    <div class="row">

                        {{-- Scheme Name --}}
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label class="form-control-label">Scheme Name</label>
                                <input type="text" class="form-control" placeholder="Enter your Scheme" name="name" required>
                            </div>
                        </div>

                        {{-- Discount --}}
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label class="form-control-label">Discount</label>
                                <input type="text" class="form-control" placeholder="Enter Discount %" name="discount" required>
                            </div>
                        </div>

                        {{-- Category --}}
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label class="form-control-label">Category</label>
                                <select class="form-control" name="category[]" id="category" multiple onchange="filterCourses()">
                                    @foreach($categories as $category)
                                        <option value="{{ $category->id }}">{{ $category->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        {{-- Course (same style as Category) --}}
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label class="form-control-label">Course</label>
                                <select class="form-control" name="course[]" id="course" multiple disabled>
                                    <option value="">Select Category First</option>
                                </select>
                            </div>
                        </div>

                        {{-- Status --}}
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label class="form-control-label">Status</label>
                                <select class="form-control" name="status" id="status">
                                    <option value="1">Active</option>
                                    <option value="0">Inactive</option>
                                </select>
                            </div>
                        </div>

                    </div> {{-- row end --}}
                </div>
            </div>
        </div>
    </div>

</form>

</div>
</div>

{{-- Script Section --}}
<script>
    // Initialize select2
    $('.multiple').select2();
    $('#category').select2();
    $('#course').select2();

    const courses = {!! json_encode($courses) !!};

    function filterCourses() {
        const selectedCategoryIds = $('#category').val();
        const courseSelect = $('#course');

        // Clear existing options
        courseSelect.empty();

        if (!selectedCategoryIds || selectedCategoryIds.length === 0) {
            courseSelect.append('<option value="">Select Category First</option>');
            courseSelect.prop('disabled', true);
            courseSelect.trigger('change.select2');
            return;
        }

        courseSelect.prop('disabled', false);

        // Filter courses by category
        const filteredCourses = courses.filter(course =>
            selectedCategoryIds.includes(String(course.category_id))
        );

        if (filteredCourses.length === 0) {
            courseSelect.append('<option value="">No courses found</option>');
        } else {
            filteredCourses.forEach(course => {
                courseSelect.append(new Option(course.title, course.id));
            });
        }

        courseSelect.trigger('change.select2');
    }
</script>
@endsection
