<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Country;
use App\Models\Course;
use App\Models\Student;
use App\Models\StudentPurchasedCourse;
use App\Models\StudentWishlistedCourse;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class StudentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $students = Student::orderBy('id', 'desc')->get();
        return view('admin.pages.students.index', compact('students'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $countries = Country::get();
        return view('admin.pages.students.create', compact('countries'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = Hash::make($request->password);
        $user->mobile_no = $request->phone;
        $user->is_student = 1;
        $user->save();

        $studentCode = random_int(100000, 999999);

        $student = new Student();
        // $student->name = $request->name;
        // $student->last_name = $request->l_name;
        $student->student_code = $studentCode;
        $student->user_id = $user->id;
        $student->mobile_no = $request->phone;
        $student->email = $request->email;
        $student->dob = $request->b_day;
        $student->country_id = $request->country;
        $student->city = $request->city;
        $student->pincode = $request->zipcode;
        // $student->payment_status = $request->payment_status;
        // $student->payment_amount = $request->payment_amount;
        $student->address_1 = $request->address_1;
        $student->address_2 = $request->address_2;
        if ($request->hasFile('image')) {
            $imageName = time() . '.' . $request->image->extension();

            $request->image->move(public_path('/images/student'), $imageName);
            $student->image = $imageName;
        }
        $student->save();

        return redirect()->route('admin.student.index')->with('success', 'Student added successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $student = Student::find($id);
        $purchasedCousers = StudentPurchasedCourse::where('student_id', $id)->get();
        $wishlistedCousers = StudentWishlistedCourse::where('student_id', $id)->get();

        $courses = Course::where('status', 1)->pluck('title', 'id')->toArray();
        return view('admin.pages.students.show', compact('student', 'purchasedCousers', 'wishlistedCousers', 'courses'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $student = Student::find($id);
        $countries = Country::get();
        $purchasedCousers = StudentPurchasedCourse::where('student_id', $id)->get();
        $wishlistedCousers = StudentWishlistedCourse::where('student_id', $id)->get();
        return view('admin.pages.students.edit', compact('student', 'purchasedCousers', 'wishlistedCousers', 'countries'));
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
        $student = Student::find($id);
        // $student->name = $request->name;
        // $student->last_name = $request->l_name;
        // $student->student_code = $studentCode;
        // $student->user_id = $user->id;
        $student->mobile_no = $request->phone;
        $student->email = $request->email;
        $student->dob = $request->b_day;
        $student->country_id = $request->country;
        $student->city = $request->city;
        $student->pincode = $request->zipcode;
        // $student->payment_status = $request->payment_status;
        // $student->payment_amount = $request->payment_amount;
        $student->address_1 = $request->address_1;
        $student->address_2 = $request->address_2;
        if ($request->hasFile('image')) {
            $imageName = time() . '.' . $request->image->extension();

            $request->image->move(public_path('/images/student'), $imageName);
            $student->image = $imageName;
        }
        $student->save();

        $user = User::find($student->user_id);
        $user->name = $request->name;
        $user->email = $request->email;
        if ($request->password) {
            $user->password = Hash::make($request->password);
        }
        $user->mobile_no = $request->phone;
        $user->save();

        return redirect()->route('admin.student.index')->with('success', 'Student updated successfully');
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

    public function assignPurchaseCourse(request $request)
    {
        $purchaseCourse = new StudentPurchasedCourse();
        $purchaseCourse->student_id = $request->student_id;
        $purchaseCourse->course_id = $request->course_id;
        $purchaseCourse->purchased_date = Carbon::parse($request->purchased_date)->format('Y-m-d H:i:s');
        $purchaseCourse->save();

        return redirect()->back()->with('success', 'Course added to Purchased');
    }
    public function removePurchaseCourse(request $request)
    {
        StudentPurchasedCourse::where('student_id', $request->student_id)->where('course_id', $request->course_id)->delete();
        return redirect()->back()->with('success', 'Course removed from Purchased');
    }
    public function removeWishlistCourse(request $request)
    {
        StudentWishlistedCourse::where('student_id', $request->student_id)->where('course_id', $request->course_id)->delete();
        return redirect()->back()->with('success', 'Course removed from Wishlist');
    }
}
