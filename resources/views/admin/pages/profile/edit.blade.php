
@extends('admin.layouts.admin_app')

@section('content')
    <h2>Edit Profile</h2>

    <form action="{{ route('update.profile', $user->id) }}" method="POST" enctype="multipart/form-data">
        @csrf
        @method('PUT')

        <div class="mb-3">
            <label>Name:</label>
            <input type="text" name="name" value="{{ $user->name }}" class="form-control" required>
        </div>

        <div class="mb-3">
            <label>Email:</label>
            <input type="email" name="email" value="{{ $user->email }}" class="form-control" required>
        </div>

        <div class="mb-3">
            <label>Profile Image:</label>
            <input type="file" name="image" class="form-control">
        </div>

        @if($user->image)
            <div class="mb-3">
                <label>Current Image:</label><br>
                <img src="{{ asset('uploads/study-materials/' . $user->image) }}" width="100" alt="Profile Image">
            </div>
        @endif

        <button type="submit" class="btn btn-primary">Update</button>
    </form>
@endsection
