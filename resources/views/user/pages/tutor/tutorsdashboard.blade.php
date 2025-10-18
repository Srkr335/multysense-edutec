@extends('user.layouts.app')

@section('content')
<section style="padding:50px 0; background: linear-gradient(120deg, #f6f8fc, #e8f0fe);">
  <div class="container">
    <div class="row align-items-center">

      <!-- Left Column: Video + Button -->
      <div class="col-lg-6 col-12 mb-4">
        <div style="border-radius:20px; overflow:hidden; box-shadow:0 15px 35px rgba(0,0,0,0.2); transition: all 0.3s; margin-bottom:20px;">
          <video autoplay muted loop playsinline style="width:100%; height:auto; display:block; transition:transform 0.4s ease;">
            <source src="{{ asset('mp4/tutor.mp4') }}" type="video/mp4">
            Your browser does not support the video tag.
          </video>
        </div>

        <button data-bs-toggle="modal" data-bs-target="#allocatePointsModal"
          style="width:100%; padding:16px; font-size:1.2rem; font-weight:bold; border:none; border-radius:12px;
                               background:#b8b8b8;
                               color:#080808; box-shadow:0 8px 20px rgba(0,0,0,0.25); cursor:pointer; transition:all 0.3s;">
          Allocate Points
        </button>
      </div>

      <!-- Right Column: Leaderboard Cards -->
      <div class="col-lg-6 col-12">

        <!-- Current Points Card -->
        <div class="mt-4">
          <div style="background:#dbdbdb; color:white; border-radius:10px; padding:20px; text-align:center; margin-bottom:20px; transition:all 0.3s;">
            <h5 style="margin-bottom:10px; font-weight:bold;">
              <i class="fas fa-star text-warning"></i> Your Current Points
            </h5>
            <div style="width:80px; height:80px; border-radius:50%; margin:0 auto; display:flex; align-items:center; justify-content:center; font-size:1.5rem; font-weight:bold; background:#7fa1db;">
              {{ $tutorPoints }}
            </div>
          </div>
        </div>

        <!-- Top Student -->
        @if($topStudent)
        <div style="background:#dbdbdb; backdrop-filter: blur(12px); 
                            border-radius:25px; padding:25px; text-align:center; margin-bottom:20px; 
                            box-shadow:0 10px 30px rgba(0,0,0,0.15);">
          <h5 class="card-title mb-2 fw-bold"><i class="fas fa-crown text-warning"></i> Top Scoring Faculty</h5>
          <p style="font-size:1.3rem; font-weight:bold; color:#080808;">
            {{ $topStudent->name }}
          </p>
          <p style="color:#45ad7b; font-size:1.1rem; margin:0;">{{ $topStudent->total_points }} Points</p>
        </div>
        @endif

        <!-- Top Group -->
        @if($topGroup)
        <div style="background: #dbdbdb; backdrop-filter: blur(12px); 
                            border-radius:25px; padding:25px; text-align:center; 
                            box-shadow:0 10px 30px rgba(0,0,0,0.15);">
          <h5 style="font-weight:bold; color:#080808; margin-bottom:10px;">
            <i class="fas fa-crown text-warning"></i> Top Group
          </h5>
          <h3 style="font-weight:bold; color:#080808;">{{ $topGroup->group_name }}</h3>
          <p style="color:#45ad7b; font-size:1.1rem; margin:0;">{{ $topGroup->total_points }} Points</p>
        </div>
        @endif
      </div>
    </div>

    <!-- Allocate Points Modal -->
    <div class="modal fade" id="allocatePointsModal" tabindex="-1" aria-labelledby="allocatePointsLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content" style="background: black; color:white; border-radius:15px; padding:20px;">
          <form action="{{ route('points.allocate') }}" method="POST">
            @csrf
            <div class="modal-header border-0">
              <h5 class="modal-title fw-bold" id="allocatePointsLabel">Allocate Points to Student</h5>
              <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
            </div>
            <div class="modal-body">
              <div class="mb-3">
                <label for="student_id" class="form-label fw-bold">Select Student</label>
                <select class="form-select" name="student_id" id="student_id" required
                  style="background: rgba(255,255,255,0.2); color:black; border-radius:10px;">
                  <option value="">-- Choose Student --</option>
                  @foreach($students as $student)
                  <option value="{{ $student->id }}">{{ $student->user->name }} (Reg: {{ $student->reg_no }})</option>
                  @endforeach
                </select>
              </div>
              <div class="mb-3">
                <label for="points" class="form-label fw-bold">Points</label>
                <input type="number" class="form-control" name="points" id="points" required
                  style="background: rgba(255,255,255,0.2); color:white; border-radius:10px;">
              </div>
              <div class="mb-3">
                <label for="remarks" class="form-label fw-bold">Remarks</label>
                <textarea class="form-control" name="remarks" id="remarks" rows="3"
                  style="background: rgba(255,255,255,0.2); color:white; border-radius:10px;"></textarea>
              </div>
            </div>
            <div class="modal-footer border-0">
              <button type="button" class="btn btn-light fw-bold" data-bs-dismiss="modal">Cancel</button>
              <button type="submit" class="btn btn-warning fw-bold">Allocate</button>
            </div>
          </form>
        </div>
      </div>
    </div>

  </div>
</section>
@endsection