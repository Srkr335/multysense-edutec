@extends('user.layouts.app')

@section('content')

<section class="container my-5">
    <div class="row g-4">
        <!-- Left Column: Video + Allocate Points Button -->
        <div class="col-lg-6 col-md-12">
            <div class="video-wrapper position-relative overflow-hidden rounded-3 mb-3">
                <video autoplay muted loop playsinline class="w-100 rounded-3 shadow-sm">
                    <source src="{{ asset('mp4/student.mp4') }}" type="video/mp4">
                    Your browser does not support the video tag.
                </video>
            </div>
            <button class="btn btn-gradient w-100 py-3 fw-bold shadow" data-bs-toggle="modal" data-bs-target="#allocatePointsModal" style="background:#999897;">
                <i class="fas fa-gift me-2"></i> Allocate Points
            </button>
        </div>

        <!-- Right Column: Points and Leaderboard -->
        <div class="col-lg-6 col-md-12 ">
            <!-- Current Points -->
<div class="mt-4"> 
    <div style="background:#dbdbdb; color:white; border-radius:10px; padding:20px; text-align:center; margin-bottom:20px; transition:all 0.3s;">
        <h5 style="margin-bottom:10px; font-weight:bold;">
            <i class="fas fa-star text-warning"></i> Your Current Points
        </h5>
        <div style="width:80px; height:80px; border-radius:50%; margin:0 auto; display:flex; align-items:center; justify-content:center; font-size:1.5rem; font-weight:bold; background:#FF6F61;">
            {{ $StudentPoints }}
        </div>
    </div>
</div>


            <!-- Top Tutor -->
            @if($topTutor)
            <div class="card text-center mb-4 shadow points-card" style="background:#dbdbdb; color:#080808;">
                <div class="card-body">
                    <h5 class="card-title mb-2 fw-bold"><i class="fas fa-crown text-warning"></i> Top Scoring Faculty</h5>
                    <h3 class="fw-bold">{{ $topTutor->name }}</h3>
                    <div class="points-circle mx-auto">{{ $topTutor->total_points }}Pts</div>
                </div>
            </div>
            @endif

            <!-- Top Group -->
            @if($topGroup)
            <div class="card text-center mb-4 shadow points-card" style="background:#dbdbdb; color:#080808 ;">
                <div class="card-body">
                    <h5 class="card-title mb-2 fw-bold"><i class="fas fa-users text-warning"></i> Top Scoring Group</h5>
                    <h3 class="fw-bold">{{ $topGroup->group_name }}</h3>
                    <div class="points-circle mx-auto">{{ $topGroup->total_points }}Pts</div>
                </div>
            </div>
            @endif
        </div>
    </div>
</section>

<!-- Allocate Points Modal -->
<div class="modal fade" id="allocatePointsModal" tabindex="-1" aria-labelledby="allocatePointsLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content border-0 rounded-3 shadow" style="background: linear-gradient(135deg,#E1704B,#A4D6A4,#D6C5A9); color:white;">
            <form action="{{ route('studentpoints.allocate') }}" method="POST">
                @csrf
                <div class="modal-header border-0">
                    <h5 class="modal-title fw-bold">Allocate Points to Student</h5>
                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label for="tutor_id" class="form-label fw-bold">Select Student</label>
                        <select name="tutor_id" id="tutor_id" required class="form-select bg-light text-dark">
                            <option value="">-- Choose Tutor --</option>
                            @foreach($tutors as $tutor)
                                <option value="{{ $tutor->id }}">{{ $tutor->user->name ?? 'No Name' }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="points" class="form-label fw-bold">Points</label>
                        <input type="number" name="points" id="points" placeholder="Enter points" required class="form-control bg-light text-dark">
                    </div>
                    <div class="mb-3">
                        <label for="reason" class="form-label fw-bold">Remarks</label>
                        <textarea name="reason" id="reason" rows="3" placeholder="Reason for points allocation" class="form-control bg-light text-dark"></textarea>
                    </div>
                </div>
                <div class="modal-footer border-0">
                    <button type="button" class="btn btn-secondary fw-bold" data-bs-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-success fw-bold">Allocate</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Latest Blogs Section -->
@if(isset($blogs) && $blogs->count() > 0)
<section class="container my-5">
    <h2 class="text-center mb-4 fw-bold">Latest Blogs</h2>
    <div class="row g-4 justify-content-center">
        @foreach($blogs as $blog)
            <div class="col-md-6 col-lg-4">
                <div class="card blog-card h-100 shadow-sm border-0">
                    <a href="{{ route('blogs.show',$blog->id) }}">
                        <img src="{{ asset($blog->image) }}" class="card-img-top blog-img" alt="{{ $blog->title }}">
                    </a>
                    <div class="card-body">
                        <h5 class="card-title">
                            <a href="{{ route('blogs.show',$blog->id) }}" class="text-dark text-decoration-none">{{ $blog->title }}</a>
                        </h5>
                        <p class="text-muted mb-1">{{ $blog->category }}</p>
                        <p class="text-secondary small">{{ $blog->created_at->format('M d, Y') }}</p>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
</section>
@endif

@endsection

@push('styles')
<style>
    /* Video Wrapper Hover */
    .video-wrapper video {
        transition: transform 0.4s ease;
    }
    .video-wrapper:hover video {
        transform: scale(1.05);
    }

    /* Button Gradient */
    .btn-gradient {
        background: linear-gradient(135deg, #A455FF, #FF6F61);
        color: white;
        font-size: 1.1rem;
        transition: all 0.3s;
    }
    .btn-gradient:hover {
        transform: translateY(-3px);
        box-shadow: 0 6px 15px rgba(0,0,0,0.2);
    }

    /* Points Circle */
    .points-circle {
        width: 90px;
        height: 90px;
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 1.6rem;
        font-weight: bold;
        background: rgba(255,255,255,0.2);
        margin: 0 auto;
        transition: all 0.3s;
    }
    .points-circle:hover {
        transform: scale(1.1);
        box-shadow: 0 6px 15px rgba(0,0,0,0.2);
    }

    /* Cards Hover */
    .points-card:hover, .blog-card:hover {
        transform: translateY(-5px);
        transition: all 0.3s;
    }

    /* Blog Card Image */
    .blog-img {
        height: 200px;
        object-fit: cover;
        transition: transform 0.3s;
    }
    .blog-card:hover .blog-img {
        transform: scale(1.05);
    }




    

</style>
@endpush
