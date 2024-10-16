@extends('admin.layouts.admin_app')

@section('content')
    <div class="container-fluid" style="transform: none;">
        <div class="row" style="transform: none;">

            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-12">

                        <div class="">

                            <div class="settings-inner-blk p-0">
                                <div class="sell-course-head comman-space d-flex justify-content-between align-items-center">
                                    <h3>Quizes</h3>
                                    <div class="go-dashboard text-center">
                                        <a href="{{ route('admin.quiz.create') }}" class="btn btn-primary">Create New
                                            Quiz</a>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="comman-space pb-0 card-body">

                                        <div class="settings-tickets-blk course-instruct-blk table-responsive">

                                            <table class="table table-nowrap mb-2">
                                                <thead>
                                                    <tr>
                                                        <th>Sl.No</th>
                                                        <th>Course</th>
                                                        <th>Question</th>
                                                        <th>Status</th>
                                                        <th>Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php $n = 0; ?>
                                                    @foreach ($quizzes as $quiz)
                                                        <?php $n++; ?>
                                                        <tr>
                                                            <td>{{ $n }}</td>

                                                            <td>{{ $quiz->course_id ? $quiz->course->title : '' }}</td>
                                                            <td>{{ $quiz->question }}</td>
                                                            <td>
                                                                @if ($quiz->status == 1)
                                                                    <span class="badge info-low">Enabled</span>
                                                                @else
                                                                    <span class="badge info-inter">Disabled</span>
                                                                @endif
                                                            </td>
                                                            <td>
                                                                <a href="{{ route('admin.quiz.edit', $quiz->id) }}"
                                                                    class="btn btn-info text-white">
                                                                    <span class="glyphicon glyphicon-edit"></span> Edit
                                                                </a>
                                                                <a href="{{ route('admin.quiz.destroy', $quiz->id) }}"
                                                                    class="btn btn-danger text-white">
                                                                    <span class="glyphicon glyphicon-trash"></span> Delete
                                                                </a>
                                                            </td>
                                                        </tr>
                                                    @endforeach
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <div class="row">
                                        <div class="col-xs-12 col-md-6 text-right">
                                            {{ $quizzes->links() }}
                                        </div>


                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

        </div>
    </div>
@endsection
