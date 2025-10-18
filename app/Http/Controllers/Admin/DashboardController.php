<?php

namespace App\Http\Controllers\Admin;

use App\Models\User;
use App\Models\Tutor;
use App\Models\Course;
use App\Models\Student;
use App\Models\TutorPoints;
use Illuminate\Http\Request;
use App\Models\TutorStudentPoint;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;

class DashboardController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    


public function dashboard()
{
    $user = auth()->user();
    $rollId = $user->roles[0]->id ?? null;

    // Default counts
    $courseCount = Course::count();
    $studentsCount = Student::count();
    $totalEarnings = 0;
    $teacherCount = Tutor::count();

    // Default leaderboard variables
    $topGroup = null;
    $topStudent = null;
    $topTutor = null;
    $tutorPoints = null;
    $StudentPoints = null;
    $totalTutorPoints = null;
    $totalStudentPoints = null;

    // ======================
    // ADMIN DASHBOARD
    // ======================
    if ($rollId == 1) {
        $totalTutorPoints = DB::table('tutor_points')->sum('points');
        $totalStudentPoints = DB::table('student_points')->sum('points');

        $topStudent = DB::table('student_points')
            ->join('students', 'student_points.student_id', '=', 'students.id')
            ->join('users', 'students.user_id', '=', 'users.id')
            ->select('users.name', DB::raw('SUM(student_points.points) as total_points'))
            ->groupBy('users.name')
            ->orderByDesc('total_points')
            ->first();

        $topTutor = DB::table('student_allocated_points')
            ->join('tutors', 'student_allocated_points.tutor_id', '=', 'tutors.id')
            ->join('users', 'tutors.user_id', '=', 'users.id')
            ->select('users.name', DB::raw('SUM(student_allocated_points.points) as total_points'))
            ->groupBy('users.name')
            ->orderByDesc('total_points')
            ->first();

        $topGroup = DB::table('student_points')
            ->join('students', 'student_points.student_id', '=', 'students.id')
            ->select('students.group', DB::raw('SUM(student_points.points) as total_points'))
            ->groupBy('students.group')
            ->orderByDesc('total_points')
            ->first();

        return view('admin.pages.dashboard', compact(
            'user','courseCount','studentsCount','totalEarnings','teacherCount',
            'totalTutorPoints','totalStudentPoints','topTutor','topStudent','topGroup'
        ));
    }

    // ======================
    // CENTRE DASHBOARD
    // ======================
    if ($rollId == 2) {
        $courseCount = Course::where('centre_id', $user->centre->id)->count();
        $studentsCount = Student::where('centre_id', $user->centre->id)->count();

         $topStudent = DB::table('student_points')
            ->join('students', 'student_points.student_id', '=', 'students.id')
            ->join('users', 'students.user_id', '=', 'users.id')
            ->select('users.name', DB::raw('SUM(student_points.points) as total_points'))
            ->groupBy('users.name')
            ->orderByDesc('total_points')
            ->first();

        $topTutor = DB::table('student_allocated_points')
            ->join('tutors', 'student_allocated_points.tutor_id', '=', 'tutors.id')
            ->join('users', 'tutors.user_id', '=', 'users.id')
            ->select('users.name', DB::raw('SUM(student_allocated_points.points) as total_points'))
            ->groupBy('users.name')
            ->orderByDesc('total_points')
            ->first();

        $topGroup = DB::table('student_points')
            ->join('students', 'student_points.student_id', '=', 'students.id')
            ->select('students.group', DB::raw('SUM(student_points.points) as total_points'))
            ->groupBy('students.group')
            ->orderByDesc('total_points')
            ->first();

        return view('admin.pages.dashboard', compact(
            'user','courseCount','studentsCount','totalEarnings','teacherCount','topGroup','topStudent','topTutor'
        ));
    }

    // ======================
    // TUTOR DASHBOARD
    // ======================
    if ($rollId == 3) {
        $students = Student::with('user')->where('status', 1)->get();
        $tutor = Tutor::where('user_id', auth()->id())->first();
        $tutorPoints = TutorPoints::where('tutor_id', $tutor->id)->sum('points');

        $topStudent = DB::table('student_points')
            ->join('students', 'student_points.student_id', '=', 'students.id')
            ->join('users', 'students.user_id', '=', 'users.id')
            ->select('users.name', DB::raw('SUM(student_points.points) as total_points'))
            ->groupBy('users.name','students.id')
            ->orderByDesc('total_points')
            ->first();

        $topGroup = DB::table('student_points')
            ->join('students', 'student_points.student_id', '=', 'students.id')
            ->select(DB::raw('`students`.`group` as group_name'), DB::raw('SUM(student_points.points) as total_points'))
            ->groupBy(DB::raw('`students`.`group`'))
            ->orderByDesc('total_points')
            ->first();

        return view('user.pages.tutor.tutorsdashboard', compact(
            'user','courseCount','studentsCount','totalEarnings','teacherCount','topGroup','topStudent','students','tutorPoints'
        ));
    }

    // ======================
    // STUDENT DASHBOARD
    // ======================
    if ($rollId == 4) {
        $tutors = Tutor::with('user')->get();
        $student = Student::where('user_id', auth()->id())->first();
        $StudentPoints = TutorStudentPoint::where('student_id', $student->id)->sum('points');

        $topTutor = DB::table('student_allocated_points')
            ->join('tutors', 'student_allocated_points.tutor_id', '=', 'tutors.id')
            ->join('users', 'tutors.user_id', '=', 'users.id')
            ->select('users.name', DB::raw('SUM(student_allocated_points.points) as total_points'))
            ->groupBy('users.name','tutors.id')
            ->orderByDesc('total_points')
            ->first();

        $topGroup = DB::table('student_points')
            ->join('students', 'student_points.student_id', '=', 'students.id')
            ->select(DB::raw('`students`.`group` as group_name'), DB::raw('SUM(student_points.points) as total_points'))
            ->groupBy(DB::raw('`students`.`group`'))
            ->orderByDesc('total_points')
            ->first();

        return view('user.pages.students.studentsdashboard', compact(
            'user','courseCount','studentsCount','totalEarnings','teacherCount','topGroup','topTutor','tutors','StudentPoints'
        ));
    }

    
    return view('admin.pages.profile.dashboard', compact(
        'user','courseCount','studentsCount','totalEarnings','teacherCount','topGroup','topStudent','topTutor'
    ));
}

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    // In controller
    public function edit()
    {
        $user = auth()->user(); // No need for $id
        return view('admin.pages.profile.edit', compact('user'));
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $user = User::findOrFail($id);
        $request->validate([
            'name'  => 'required|string|max:255',
            'email' => 'required|email|unique:users,email,' . $id,
            'image' => 'nullable|image|mimes:jpeg,png,jpg|max:20480', // 20480 KB = 20 MB
        ]);
        $user->name = $request->name;
        $user->email = $request->email;
        $user->image = $request->image;
        $data = $request->only(['name', 'email', 'image']);
        if ($request->hasFile('image')) {
            // Delete old image if exists
            if ($user->image && file_exists(public_path('uploads/study-materials/' . $user->image))) {
                unlink(public_path('uploads/study-materials/' . $user->image));
            }
            $file     = $request->file('image');
            $filename = time() . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('uploads/study-materials'), $filename);
            $data['image'] = $filename;
        }
        $user->update($data);
        return redirect()->route('admin.home')->with('success', 'Profile updated successfully.');
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
