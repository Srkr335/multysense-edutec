@extends('admin.layouts.admin_app')

@section('content')
    <div class="container-fluid" style="transform: none;">
        <div class="row" style="transform: none;">

            <div class=" col-md-12">
                <div class="row">
                    <div class="col-md-12">

                        <div class="s">

                            <div class="settings-inner-blk p-0">
                                <div class="sell-course-head comman-space d-flex justify-content-between align-items-center">
                                    <h3>Courses</h3>
                                    <div class="go-dashboard text-center">
                                        <a href="{{ url('/admin/course/create') }}" class="btn btn-primary">Create New
                                            Course</a>
                                    </div>
                                </div>
                                <div class="comman-space pb-0">

                                    <div class="settings-tickets-blk course-instruct-blk ">

                                        <table class="table table-nowrap mb-2 dataTable">
                                            <thead>
                                                <tr  style="background-color: #F04747; color: #fff; text-align: left;">
                                                    <th>Sl.No</th>
                                                    <th>Image</th>
                                                    <th>Title</th>
                                                    <th>Duration</th>
                                                    <th>Level</th>
                                                    <th>Category</th>
                                                    <th>Status</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                            </tbody>
                                        </table>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>



   
        @push('scripts')
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script>
$(document).on('click', '.delete-course', function(e) {
    e.preventDefault();

    let deleteUrl = $(this).data('url'); // get delete route from data-url attribute

    Swal.fire({
        title: 'Are you sure?',
        text: "You won’t be able to revert this action!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#d33',
        cancelButtonColor: '#3085d6',
        confirmButtonText: 'Yes, delete it!',
        cancelButtonText: 'Cancel'
    }).then((result) => {
        if (result.isConfirmed) {
            window.location.href = deleteUrl; // redirect to delete route
        }
    });
});
</script>


        <script type="text/javascript">
            $(function() {
                var table = $('.dataTable').DataTable({
                    processing: true,
                    serverSide: true,
                    ajax: "{{ route('admin.course.get') }}",
                    columns: [{
                            data: 'DT_RowIndex',
                            name: 'DT_RowIndex',
                            orderable: false,
                            searchable: false
                        },
                        {
                            data: 'image',
                            name: 'image',
                            orderable: false,
                            searchable: false
                        },
                        {
                            data: 'title',
                            name: 'title'
                        },
                        {
                            data: 'duration',
                            name: 'duration'
                        },
                        {
                            data: 'level',
                            name: 'level'
                        },
                        {
                            data: 'category',
                            name: 'category'
                        },
                        {
                            data: 'status',
                            name: 'status',
                            orderable: false,
                            searchable: false
                        },
                        {
                            data: 'action',
                            name: 'action',
                            orderable: false,
                            searchable: false
                        },
                    ]
                });

            });
        </script>
    @endpush
@endsection
