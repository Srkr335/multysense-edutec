@extends('admin.layouts.admin_app')

@section('content')
    <div class="container-fluid">
        <div class="row">
            {{-- <div class=" col-lg-12 col-md-12">
          
            <div class="row">
                <div class="col-md-12">
                    <div class="card instructor-card">
                        <div class="card-header">
                            <h4>Earnings</h4>
                        </div>
                        <div class="card-body">
                            <div id="instructor_chart"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="card instructor-card">
                        <div class="card-header">
                            <h4>Order</h4>
                        </div>
                        <div class="card-body">
                            <div id="order_chart"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="settings-widget">
                        <div class="settings-inner-blk p-0">
                            <div class="sell-course-head comman-space">
                                <h3>Best Selling Courses</h3>
                            </div>
                            <div class="comman-space pb-0">
                                <div class="settings-tickets-blk course-instruct-blk table-responsive">

                                    <table class="table table-nowrap mb-0">
                                        <thead>
                                            <tr>
                                                <th>COURSES</th>
                                                <th>SALES</th>
                                                <th>AMOUNT</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <div class="sell-table-group d-flex align-items-center">
                                                        <div class="sell-group-img">
                                                            <a href="course-details.html">
                                                                <img src="assets/img/course/course-10.jpg"
                                                                    class="img-fluid " alt>
                                                            </a>
                                                        </div>
                                                        <div class="sell-tabel-info">
                                                            </p>
                                                            <p><a href="course-details.html">Information About UI/UX
                                                                    Design Degree</a>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>34</td>
                                                <td>$3,145.23</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="sell-table-group d-flex align-items-center">
                                                        <div class="sell-group-img">
                                                            <a href="course-details.html">
                                                                <img src="assets/img/course/course-11.jpg"
                                                                    class="img-fluid " alt>
                                                            </a>
                                                        </div>
                                                        <div class="sell-tabel-info">
                                                            <p><a href="course-details.html">Wordpress for Beginners -
                                                                    Master Wordpress Quickly</a></p>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>34</td>
                                                <td>$3,145.23</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="sell-table-group d-flex align-items-center">
                                                        <div class="sell-group-img">
                                                            <a href="course-details.html">
                                                                <img src="assets/img/course/course-12.jpg"
                                                                    class="img-fluid " alt>
                                                            </a>
                                                        </div>
                                                        <div class="sell-tabel-info">
                                                            <p><a href="course-details.html">Sketch from A to Z (2022):
                                                                    Become an app designer</a></p>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>34</td>
                                                <td>$3,145.23</td>
                                            </tr>
                                        </tbody>
                                    </table>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> --}}

            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-12">

                        <div class="">

                            <div class="settings-inner-blk p-0">
                                <div class="sell-course-head comman-space d-flex justify-content-between align-items-center">
                                    <h3>Payments</h3>
                                    <div class="go-dashboard text-center">
                                        <a href="{{ route('admin.payment.create') }}" class="btn btn-primary">Create New
                                            Payment</a>
                                    </div>
                                </div>
                                {{-- <div class="form-filter comman-space">
                                    <input type="text" class="form-control name" name="" id="">
                                    <input type="text" class="form-control email" name="" id="">
                                    <a href="" class="btn btn-primary button-search ">Search</a>
                                </div> --}}
                                <div class="comman-space pb-0">

                                    <div class="settings-tickets-blk course-instruct-blk table-responsive">

                                        <table class="table table-nowrap mb-2 datatable">
                                            <thead>
                                                <tr>
                                                    <th>Sl.No</th>
                                                    <th>Student</th>
                                                    <th>Course</th>
                                                    <th>Amount</th>
                                                    <th>Month</th>
                                                    <th>End Date</th>
                                                    <th>Payment Status</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                {{-- @foreach ($categories as $category)
                                                    <tr>
                                                        <td>
                                                            <div class="sell-table-group d-flex align-items-center">
                                                                <div class="sell-group-img">
                                                                    <a href="course-details.html">
                                                                        <img src="{{ asset('/images/category/' . $category->image) }}"
                                                                            class="img-fluid " alt="">
                                                                    </a>
                                                                </div>
                                                                <div class="sell-tabel-info">
                                                                    <p><a
                                                                            href="course-details.html">{{ $category->name }}</a>
                                                                    </p>
                                                                    <div
                                                                        class="course-info d-flex align-items-center border-bottom-0 pb-0">
                                                                        <div class="rating-img d-flex align-items-center">
                                                                            <img src="http://127.0.0.1:8000/img/icon/icon-01.svg"
                                                                                alt="">
                                                                            <p>10+ Lesson</p>
                                                                        </div>
                                                                        <div class="course-view d-flex align-items-center">
                                                                            <img src="http://127.0.0.1:8000/img/icon/timer-start.svg"
                                                                                alt="">
                                                                            <p>7hr 20min</p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td>RS 1200/-</td>
                                                        <td>3200</td>
                                                        <td>
                                                            @if ($category->status == 1)
                                                                <span class="badge info-low">Live</span>
                                                            @else
                                                                <span class="badge info-inter">Darft</span>
                                                            @endif
                                                        </td>
                                                        <td>
                                                            <a href="{{ route('admin.category.edit', $category->id) }}"
                                                                class="btn btn-info text-white">
                                                                <span class="glyphicon glyphicon-edit"></span> Edit
                                                            </a>
                                                        </td>
                                                    </tr>
                                                @endforeach --}}

                                                {{-- <tr>
                                                    <td>
                                                        <div class="sell-table-group d-flex align-items-center">
                                                            <div class="sell-group-img">
                                                                <a href="course-details.html">
                                                                    <img src="http://127.0.0.1:8000/img/course/course-11.jpg"
                                                                        class="img-fluid " alt="">
                                                                </a>
                                                            </div>
                                                            <div class="sell-tabel-info">
                                                                <p><a href="course-details.html">Wordpress for Beginners -
                                                                        Master Wordpress Quickly</a></p>
                                                                <div
                                                                    class="course-info d-flex align-items-center border-bottom-0 pb-0">
                                                                    <div class="rating-img d-flex align-items-center">
                                                                        <img src="http://127.0.0.1:8000/img/icon/icon-01.svg"
                                                                            alt="">
                                                                        <p>10+ Lesson</p>
                                                                    </div>
                                                                    <div class="course-view d-flex align-items-center">
                                                                        <img src="http://127.0.0.1:8000/img/icon/timer-start.svg"
                                                                            alt="">
                                                                        <p>7hr 20min</p>
                                                                    </div>
                                                                </div>
                                                                <div class="course-stip progress-stip">
                                                                    <div
                                                                        class="progress-bar bg-success progress-bar-striped active-stip">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>RS 1200/-</td>
                                                    <td>0</td>
                                                    <td><span class="badge info-inter">Darft</span></td>
                                                </tr> --}}
                                                {{-- <tr>
                                            <td>
                                                <div class="sell-table-group d-flex align-items-center">
                                                    <div class="sell-group-img">
                                                        <a href="course-details.html">
                                                            <img src="http://127.0.0.1:8000/img/course/course-12.jpg" class="img-fluid " alt="">
                                                        </a>
                                                    </div>
                                                    <div class="sell-tabel-info">
                                                        <p><a href="course-details.html">Sketch from A to Z (2022):
                                                                Become an app designer</a></p>
                                                        <div class="course-info d-flex align-items-center border-bottom-0 pb-0">
                                                            <div class="rating-img d-flex align-items-center">
                                                                <img src="http://127.0.0.1:8000/img/icon/icon-01.svg" alt="">
                                                                <p>10+ Lesson</p>
                                                            </div>
                                                            <div class="course-view d-flex align-items-center">
                                                                <img src="http://127.0.0.1:8000/img/icon/timer-start.svg" alt="">
                                                                <p>7hr 20min</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>RS 1200/-</td>
                                            <td>1500</td>
                                            <td><span class="badge info-low">Live</span></td>
                                        </tr> --}}

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
        <script type="text/javascript">
            $(function() {
                var table = $('.datatable').DataTable({
                    processing: true,
                    serverSide: true,
                    ajax: "{{ route('admin.payment.get') }}",
                    columns: [{
                            data: 'DT_RowIndex',
                            name: 'DT_RowIndex',
                            orderable: false,
                            searchable: false
                        },
                        {
                            data: 'student',
                            name: 'student'
                        },
                        {
                            data: 'course',
                            name: 'course'
                        },
                        {
                            data: 'amount',
                            name: 'amount'
                        },
                        {
                            data: 'month',
                            name: 'month'
                        },
                        {
                            data: 'end_date',
                            name: 'end_date'
                        },
                        {
                            data: 'status',
                            name: 'status'
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
