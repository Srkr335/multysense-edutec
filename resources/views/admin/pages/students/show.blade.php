@extends('admin.layouts.admin_app')

@section('content')
    <div class="container" style="transform: none;">
        <div class="row" style="transform: none;">

            <div class="col-xl-3 col-md-4 theiaStickySidebar"
                style="position: relative; overflow: visible; box-sizing: border-box; min-height: 1px;">


                <div class="theiaStickySidebar mt-3"
                    style="padding-top: 0px; padding-bottom: 1px; position: static; transform: none;">
                    <div class=" dash-profile mb-3">
                        <div class="settings-menu p-0">
                            <div class="profile-bg">
                                <img src="{{ asset('img/profile-bg.jpg') }}" alt="">
                                <div class="profile-img">
                                    <a href="#"><img alt=""
                                            src="{{ asset('/images/student/' . $student->image) }}"></a>
                                </div>
                            </div>
                            <div class="profile-group">
                            @can('student_edit')
                                <div class="d-flex justify-content-end" style="margin-right: -10px;">
                                    <a href="{{ route('admin.student.edit', ['id' => $student->id]) }}"><i
                                            class="fa-solid fa-edit"></i></a>

                                </div>
                                @endcan
                                <div class="profile-name text-center">
                                    <h4><a href="#">{{ $student->user->name }}
                                            {{-- @if ($student->payment_status == 1)
                                                <i class="fa-solid fa-crown fa-bounce " style="color: #FFD43B;"></i>
                                            @endif --}}
                                        </a></h4>
                                    <p class="mb-1">{{ $student->email }}
                                    </p>
                                    <p class="mb-1">{{ $student->mobile_no }}
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="resize-sensor"
                        style="position: absolute; inset: 0px; overflow: hidden; z-index: -1; visibility: hidden;">
                        <div class="resize-sensor-expand"
                            style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; z-index: -1; visibility: hidden;">
                            <div
                                style="position: absolute; left: 0px; top: 0px; transition: all 0s ease 0s; width: 295px; height: 1291px;">
                            </div>
                        </div>
                        <div class="resize-sensor-shrink"
                            style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; z-index: -1; visibility: hidden;">
                            <div style="position: absolute; left: 0; top: 0; transition: 0s; width: 200%; height: 200%">
                            </div>
                        </div>
                    </div>
                    {{-- <div class="card-body overview-sec-body bg-white">
                        <h5 class="subs-title">Professional Skills</h5>
                        <div class="sidebar-tag-labels">
                        <ul class="list-unstyled">
                        <li><a href="javascript:;" class="">User Interface Design</a></li>
                        <li><a href="javascript:;">Web Development</a></li>
                        <li><a href="javascript:;">Web Design</a></li>
                        <li><a href="javascript:;">UI Design</a></li>
                        <li><a href="javascript:;">Mobile App Design</a></li>
                        </ul>
                        </div>
                        </div> --}}
                </div>

            </div>


            <div class="col-xl-9 col-md-8">
                <div class="profile-details mb-4">
                    <div class="card wish-card mb-0">
                        <div class="card-header p-4">
                            <div class=" d-flex justify-content-between">
                                <h5>Purchased Courses ({{ $purchasedCousers->count() }} items)</h5>
                                <div class="text-right">
                                    <button type="button" class="btn btn-primary" data-toggle="modal"
                                        data-target="#assignCourse">
                                        Assign Course
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="card-body p-4">
                            <div class="row">
                                @foreach ($purchasedCousers as $purchasedCouser)
                                    <div class="col-lg-4 col-md-6 ">
                                        <div class="student-box flex-fill">
                                            <div class="student-img">
                                                <a href="#">
                                                    <img class="w-100" alt=""
                                                        src="{{ $purchasedCouser->course->courcePlaylist ? asset('course/images') . '/' . $purchasedCouser->course->courcePlaylist->image_url : asset('img/no_image.png') }}">
                                                </a>
                                            </div>
                                            <div class="student-content pb-0">
                                                <h5><a href="#">{{ $purchasedCouser->course->title }}</a>
                                                </h5>
                                                @if ($purchasedCouser->course->class_count)
                                                    <div class="rating-img d-flex align-items-center mb-2">
                                                        <img src="{{ asset('img/icon/icon-01.svg') }}" alt="">
                                                        <p>{{ $purchasedCouser->course->class_count }} Lesson</p>
                                                    </div>
                                                @endif
                                                @if ($purchasedCouser->course->level)
                                                    <div class="course-view d-flex align-items-center mb-3">
                                                        <img src="http://127.0.0.1:8000/img/icon/icon-02.svg"
                                                            alt="">
                                                        <p>{{ $purchasedCouser->course->level }}</p>
                                                    </div>
                                                @endif
                                                @if ($purchasedCouser->purchased_date)
                                                    <div class="course-view d-flex align-items-center mb-3">

                                                        <p>Purchased ON :
                                                            {{ \Carbon\Carbon::parse($purchasedCouser->purchased_date)->format('d M, Y h:i A') }}
                                                        </p>
                                                    </div>
                                                @endif
                                                <div class="remove-btn">
                                                    <form action="{{ route('admin.student.remove.purchase.course') }}"
                                                        method="post">
                                                        @csrf
                                                        <input type="hidden" name="student_id"
                                                            value="{{ $student->id }}">
                                                        <input type="hidden" name="course_id"
                                                            value="{{ $purchasedCouser->course_id }}">
                                                        <a class="btn" href="#"
                                                            onclick="event.preventDefault(); this.closest('form').submit();">Remove</a>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach

                                @if ($purchasedCousers->count() == 0)
                                    <p class="text-center">No purchased courses found</p>
                                @endif

                                {{-- <div class="col-lg-4 col-md-6 ">
                                    <div class="student-box flex-fill">
                                        <div class="student-img">
                                            <a href="student-profile.html">
                                                <img class="w-100" alt=""
                                                    src="{{ asset('img/course/course-01.jpg') }}">
                                            </a>
                                        </div>
                                        <div class="student-content pb-0">
                                            <h5><a href="course-details.html">Information About UI/UX Design
                                                    Degree</a></h5>
                                            <div class="rating-img d-flex align-items-center mb-2">
                                                <img src="{{ asset('img/icon/icon-01.svg') }}" alt="">
                                                <p>12+ Lesson</p>
                                            </div>
                                            <div class="course-view d-flex align-items-center mb-3">
                                                <img src="http://127.0.0.1:8000/img/icon/icon-02.svg" alt="">
                                                <p>9hr 30min</p>
                                            </div>
                                            <div class="remove-btn">
                                                <a href="javascript:;" class="btn">Remove</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 ">
                                    <div class="student-box flex-fill">
                                        <div class="student-img">
                                            <a href="student-profile.html">
                                                <img class="w-100" alt=""
                                                    src="{{ asset('img/course/course-01.jpg') }}">
                                            </a>
                                        </div>
                                        <div class="student-content pb-0">
                                            <h5><a href="course-details.html">Information About UI/UX Design
                                                    Degree</a></h5>
                                            <div class="rating-img d-flex align-items-center mb-2">
                                                <img src="{{ asset('img/icon/icon-01.svg') }}" alt="">
                                                <p>12+ Lesson</p>
                                            </div>
                                            <div class="course-view d-flex align-items-center mb-3">
                                                <img src="http://127.0.0.1:8000/img/icon/icon-02.svg" alt="">
                                                <p>9hr 30min</p>
                                            </div>
                                            <div class="remove-btn">
                                                <a href="javascript:;" class="btn">Remove</a>
                                            </div>
                                        </div>
                                    </div>
                                </div> --}}
                            </div>

                        </div>
                    </div>
                </div>
                <div class=" profile-details">
                    <div class="card wish-card mb-0">
                        <div class="card-header p-4">
                            <h5>Wishlisted Course ({{ $wishlistedCousers->count() }} items)</h5>
                        </div>
                        <div class="card-body p-4">
                            <div class="row">
                                @foreach ($wishlistedCousers as $wishlistedCouser)
                                    <div class="col-lg-4 col-md-6 ">
                                        <div class="student-box flex-fill">
                                            <div class="student-img">
                                                <a href="#">
                                                    <img class="w-100" alt=""
                                                        src="{{ $wishlistedCouser->course->courcePlaylist ? asset('course/images') . '/' . $wishlistedCouser->course->courcePlaylist->image_url : asset('img/no_image.png') }}">
                                                </a>
                                            </div>
                                            <div class="student-content pb-0">
                                                <h5><a href="#">{{ $wishlistedCouser->course->title }}</a>
                                                </h5>
                                                @if ($wishlistedCouser->course->class_count)
                                                    <div class="rating-img d-flex align-items-center mb-2">
                                                        <img src="{{ asset('img/icon/icon-01.svg') }}" alt="">
                                                        <p>{{ $wishlistedCouser->course->class_count }} Lesson</p>
                                                    </div>
                                                @endif
                                                @if ($wishlistedCouser->course->level)
                                                    <div class="course-view d-flex align-items-center mb-3">
                                                        <img src="http://127.0.0.1:8000/img/icon/icon-02.svg"
                                                            alt="">
                                                        <p>{{ $wishlistedCouser->course->level }}</p>
                                                    </div>
                                                @endif
                                                @if ($wishlistedCouser->wishlisted_date)
                                                    <div class="course-view d-flex align-items-center mb-3">

                                                        <p>Wishlisted ON :
                                                            {{ \Carbon\Carbon::parse($wishlistedCouser->wishlisted_date)->format('d M, Y h:i A') }}
                                                        </p>
                                                    </div>
                                                @endif
                                                <div class="remove-btn">
                                                    <form action="{{ route('admin.student.remove.wishlist.course') }}"
                                                        method="post">
                                                        @csrf
                                                        <input type="hidden" name="student_id"
                                                            value="{{ $student->id }}">
                                                        <input type="hidden" name="course_id"
                                                            value="{{ $wishlistedCouser->course_id }}">
                                                        <a class="btn" href="#"
                                                            onclick="event.preventDefault(); this.closest('form').submit();">Remove</a>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach

                                @if ($wishlistedCousers->count() == 0)
                                    <p class="text-center">No wishlisted courses found</p>
                                @endif
                                {{-- <div class="col-lg-4 col-md-6 ">
                                    <div class="student-box flex-fill">
                                        <div class="student-img">
                                            <a href="student-profile.html">
                                                <img class="w-100" alt=""
                                                    src="{{ asset('img/course/course-01.jpg') }}">
                                            </a>
                                        </div>
                                        <div class="student-content pb-0">
                                            <h5><a href="course-details.html">Information About UI/UX Design
                                                    Degree</a></h5>
                                            <div class="rating-img d-flex align-items-center mb-2">
                                                <img src="{{ asset('img/icon/icon-01.svg') }}" alt="">
                                                <p>12+ Lesson</p>
                                            </div>
                                            <div class="course-view d-flex align-items-center mb-3">
                                                <img src="http://127.0.0.1:8000/img/icon/icon-02.svg" alt="">
                                                <p>9hr 30min</p>
                                            </div>
                                            <div class="remove-btn">
                                                <a href="javascript:;" class="btn">Remove</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-6 ">
                                    <div class="student-box flex-fill">
                                        <div class="student-img">
                                            <a href="student-profile.html">
                                                <img class="w-100" alt=""
                                                    src="{{ asset('img/course/course-01.jpg') }}">
                                            </a>
                                        </div>
                                        <div class="student-content pb-0">
                                            <h5><a href="course-details.html">Information About UI/UX Design
                                                    Degree</a></h5>
                                            <div class="rating-img d-flex align-items-center mb-2">
                                                <img src="{{ asset('img/icon/icon-01.svg') }}" alt="">
                                                <p>12+ Lesson</p>
                                            </div>
                                            <div class="course-view d-flex align-items-center mb-3">
                                                <img src="http://127.0.0.1:8000/img/icon/icon-02.svg" alt="">
                                                <p>9hr 30min</p>
                                            </div>
                                            <div class="remove-btn">
                                                <a href="javascript:;" class="btn">Remove</a>
                                            </div>
                                        </div>
                                    </div>
                                </div> --}}
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            {{-- assign course modal --}}
            <div class="modal fade" id="assignCourse" tabindex="-1" role="dialog" aria-labelledby="assignCourseLabel"
                aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="assignCourseLabel">Assign Course</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <form action="{{ route('admin.student.assign.course') }}" method="post">
                            @csrf
                            <div class="modal-body">
                                <input type="hidden" name="student_id" value="{{ $student->id }}">
                                <div class="form-group">
                                    <label class="add-course-label">Course<span class="text-danger">*</span></label>
                                    <select class="form-control " name="course_id" id="courses" required>
                                        <option value="">Select a Courses</option>
                                        @foreach ($courses as $key => $course)
                                            <option value="{{ $key }}">{{ $course }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label class="add-course-label">Purchased Date <span
                                            class="text-danger">*</span></label>
                                    <input type="datetime-local" class="form-control" required name="purchased_date">
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary">Assign</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @push('scripts')
        <script></script>
    @endpush
@endsection
