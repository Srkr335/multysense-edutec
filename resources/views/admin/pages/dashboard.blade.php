@extends('admin.layouts.admin_app')

@section('content')
<div class="container-fluid">
    <div class="row">
        <div class=" col-lg-12 col-md-12">
            <div class="row">
                <div class="col-md-3 d-flex">
                    <div class="card instructor-card w-100">
                        <div class="card-body">
                            <div class="instructor-inner">
                                <h6>Total Courses</h6>
                                <h4 class="instructor-text-success">{{ $courseCount }}</h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 d-flex">
                    <div class="card instructor-card w-100">
                        <div class="card-body">
                            <div class="instructor-inner">
                                <h6>Total Students</h6>
                                <h4 class="instructor-text-info">{{ $studentsCount }}</h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 d-flex">
                    <div class="card instructor-card w-100">
                        <div class="card-body">
                            <div class="instructor-inner">
                                <h6>Total Earnings</h6>
                                <h4 class="instructor-text-warning">{{ $totalEarnings }}</h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 d-flex">
                    <div class="card instructor-card w-100">
                        <div class="card-body">
                            <div class="instructor-inner">
                                <h6>Total Tutors</h6>
                                <h4 class="instructor-text-warning">{{ $teacherCount }}</h4>
                            </div>
                        </div>
                    </div>
                </div>




                <div class="col-md-3 d-flex">
                    <div class="card instructor-card w-100">
                        <div class="card-body">
                            <div class="instructor-inner text-center">
                                <h6 class="text-muted mb-1">Top Student</h6>
                                <h5 class="fw-bold mb-0 instructor-text-info">
                                    {{ $topStudent->name ?? 'N/A' }}
                                </h5>

                                @if(isset($topStudent->total_points))
                                <div style=" display: inline-flex; align-items: center; justify-content: center; width: 45px;
                     height: 45px; border-radius: 50%;background-color: #3528F6; color: white; font-weight: bold;
                      margin-top: 8px; font-size: 14px;">
                                    {{ $topStudent->total_points }}
                                </div>
                                @else
                                <div class="text-muted mt-2">0</div>
                                @endif

                                <div class="mt-1 text-muted">pts</div>
                            </div>
                        </div>
                    </div>
                </div>



                <div class="col-md-3 d-flex">
                    <div class="card instructor-card w-100">
                        <div class="card-body">
                            <div class="instructor-inner text-center">
                                <h6 class="text-muted mb-1">Top Tutor</h6>
                                <h5 class="fw-bold mb-0 instructor-text-success">
                                    {{ $topTutor->name ?? 'N/A' }}
                                </h5>

                                @if(isset($topTutor->total_points))
                                <div style=" display: inline-flex; align-items: center; justify-content: center; width: 45px;
                     height: 45px; border-radius: 50%;background-color: #28a745; color: white; font-weight: bold;
                      margin-top: 8px; font-size: 14px;">
                                    {{ $topTutor->total_points }}
                                </div>
                                @else
                                <div class="text-muted mt-2">0</div>
                                @endif

                                <div class="mt-1 text-muted">pts</div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="col-md-3 d-flex">
                    <div class="card instructor-card w-100">
                        <div class="card-body">
                            <div class="instructor-inner text-center">
                                <h6 class="text-muted mb-1">Top Group</h6>
                                <h5 class="fw-bold mb-0 instructor-text-info">
                                    {{ $topGroup->group}}
                                </h5>

                                @if(isset($topGroup->total_points))
                                <div style=" display: inline-flex; align-items: center; justify-content: center; width: 45px;
                     height: 45px; border-radius: 50%;background-color:#a751e8; color: white; font-weight: bold;
                      margin-top: 8px; font-size: 14px;">
                                    {{ $topGroup->total_points }}
                                </div>
                                @else
                                <div class="text-muted mt-2">0</div>
                                @endif

                                <div class="mt-1 text-muted">pts</div>




                                <div class="row g-4 mt-4">

                                </div>



                            </div>

                        </div>

                    </div>
                </div>

                @push('scripts')
                <script>
                    
                </script>
                @endpush
                @endsection
