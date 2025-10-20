<?php

namespace App\Http\Controllers\Admin;

use Carbon\Carbon;
use App\Models\User;
use App\Models\Batch;
use App\Models\Tutor;
use App\Models\Centre;
use App\Models\Course;
use App\Models\Scheme;
use App\Models\Country;
use App\Models\Student;
use App\Models\Category;
use App\Models\TutorPoints;
use Illuminate\Support\Arr;
use Illuminate\Support\Str;
use App\Models\CourseCentre;
use Illuminate\Http\Request;
use App\Models\StudentPayment;
use App\Models\TutorStudentPoint;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Models\SchemeCategoryCourse;
use Illuminate\Support\Facades\Hash;
use App\Models\StudentAllocatedPoints;
use App\Models\StudentPurchasedCourse;
use App\Models\StudentWishlistedCourse;

class StudentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index(Request $request)
    {
        $rollId = auth()->user()->roles[0]->id;
        $keyword = $request->keyword;

        $query = Student::query()->with('user')->orderBy('id', 'desc');

        if ($rollId == 2) {
            $query->where('centre_id', auth()->user()->centre->id);
        }

        if (!empty($keyword)) {
            $query->where(function ($q) use ($keyword) {
                $q->where('email', 'like', "{$keyword}%")
                    ->orWhere('mobile_no', 'like', "{$keyword}%")
                    ->orWhere('student_code', 'like', "{$keyword}%")
                    ->orWhereHas('user', function ($q2) use ($keyword) {
                        $q2->where('name', 'like', "{$keyword}%");
                    });
            });
        }


        $students = $query->paginate(10)->appends(['keyword' => $keyword]);

        if ($request->ajax()) {
            return response()->view('admin.pages.students.index', compact('students'));
        }
        return view('admin.pages.students.index', compact('students'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $schemes = Scheme::where('status', 1)->get();
        $categories = Category::where('status', 1)->get();
        $batches = Batch::where('status', 1)->get();
        $courses = Course::where('status', 1)->get();
        $countries = Country::get();
        return view('admin.pages.students.create', compact('countries', 'courses', 'batches', 'schemes', 'categories'));
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */

    // public function store(Request $request)
    // {
    //     $request->validate([
    //         'email' => 'required|email|unique:users,email',
    //         'batch' => 'required|integer|exists:batches,id',

    //     ]);

    //     $schemeDtl = Scheme::find($request->scheme);
    //     $offerPercentage = $schemeDtl->discount;
    //     $courseFee = $request->course_fee;
    //     $discountAmount = ($courseFee * $offerPercentage) / 100;
    //     $courseTotalAmount = $courseFee - $discountAmount;

    //     $user = new User();
    //     $user->name = $request->name;
    //     $user->email = $request->email;
    //     $user->password = Hash::make($request->password);
    //     $user->mobile_no = $request->phone;
    //     $user->is_student = 1;
    //     $user->save();

    //     $studentCode = random_int(100000, 999999);

    //     $student = new Student();
    //     $student->student_code = $studentCode;
    //     $student->user_id = $user->id;
    //     $student->mobile_no = $request->phone;
    //     $student->email = $request->email;
    //     $student->dob = $request->b_day;
    //     $student->country_id = $request->country;
    //     $student->city = $request->city;
    //     $student->pincode = $request->zipcode;
    //     $student->address_1 = $request->address_1;
    //     $student->address_2 = $request->address_2;
    //     $groups = ['Blue', 'Yellow', 'Red', 'Green'];
    //     $randomGroup = Arr::random($groups); // Laravel helper
    //     $student->group = $randomGroup;

    //     if ($request->hasFile('image')) {
    //         $imageName = time() . '.' . $request->image->extension();
    //         $request->image->move(public_path('/images/student'), $imageName);
    //         $student->image = $imageName;
    //     }

    //     $student->batch_id = $request->batch;
    //     $student->scheme_id = $request->scheme;
    //     $student->category_id = $request->category;
    //     $student->centre_id = $request->centre;
    //     $student->course_id = $request->course;
    //     $student->status = $request->status;

    //     // Fetch required values for reg_no
    //     $centre = Centre::find($request->centre);
    //      $districtNo = str_pad($centre->district_no ?? '0', 2, '0', STR_PAD_LEFT);
    //     $centreNo = str_pad($request->centre, 2, '0', STR_PAD_LEFT);
    //     $batchNo = str_pad($request->batch, 2, '0', STR_PAD_LEFT);
    //     $courseNo = str_pad($request->course, 2, '0', STR_PAD_LEFT);
    //     $year = date('y');

    //     // Save student temporarily to get the ID
    //     $student->save();

    //     // Generate register number: W + year + district + centre + batch + course + student_id
    //     $registerNo = 'W' . $year . $districtNo . $centreNo . $batchNo . $courseNo . str_pad($student->id, 3, '0', STR_PAD_LEFT);
    //     $student->reg_no = $registerNo;
    //     $student->save();

    //     if ($request->course) {
    //         $purchased = new StudentPurchasedCourse();
    //         $purchased->student_id = $student->id;
    //         $purchased->course_id = $request->course;
    //         $purchased->course_total_amount = $courseTotalAmount;
    //         $purchased->installment = $request->course_installment;
    //         $purchased->purchased_date = $student->created_at;
    //         $purchased->save();
    //     }
    // // Step 1: Fetch all tutors
    // $tutors = Tutor::all();
    // $tutorCount = $tutors->count();

    //         if ($tutorCount > 0) {
    //           $pointsPerTutor = 100 / $tutorCount;

    //     // Step 2: Save points for each tutor
    //     foreach ($tutors as $tutor) {
    //         $tutorPoint = new TutorPoints(); // Make sure this model exists
    //         $tutorPoint->student_id = $student->id;
    //         $tutorPoint->tutor_id = $tutor->id;
    //         $tutorPoint->points = $pointsPerTutor;
    //         $tutorPoint->save();
    //     }
    // }
    //     return redirect()->route('admin.student.index')->with('success', 'Student added successfully');
    // }


public function store(Request $request)
{
    $request->validate([
        'email' => 'required|email|unique:users,email',
        'batch' => 'required|integer|exists:batches,id',

    ]);

    $schemeDtl = Scheme::find($request->scheme);
    $offerPercentage = $schemeDtl->discount;
    $courseFee = $request->course_fee;
    $discountAmount = ($courseFee * $offerPercentage) / 100;
    $courseTotalAmount = $courseFee - $discountAmount;

    $user = new User();
    $user->name = $request->name;
    $user->email = $request->email;
    $user->password = Hash::make($request->password);
    $user->mobile_no = $request->phone;
    $user->is_student = 1;
    $user->save();

    $studentCode = random_int(100000, 999999);

    $student = new Student();
    $student->student_code = $studentCode;
    $student->user_id = $user->id;
    $student->mobile_no = $request->phone;
    $student->email = $request->email;
    $student->dob = $request->b_day;
    $student->country_id = $request->country;
    $student->city = $request->city;
    $student->pincode = $request->zipcode;
    $student->address_1 = $request->address_1;
    $student->address_2 = $request->address_2;
    $groups = ['Blue', 'Yellow', 'Red', 'Green'];
    $randomGroup = Arr::random($groups); // Laravel helper
    $student->group = $randomGroup;

    if ($request->hasFile('image')) {
        $imageName = time() . '.' . $request->image->extension();
        $request->image->move(public_path('/images/student'), $imageName);
        $student->image = $imageName;
    }

    $student->batch_id = $request->batch;
    $student->scheme_id = $request->scheme;
    $student->category_id = $request->category;
    $student->centre_id = $request->centre;
    $student->course_id = $request->course;
    $student->status = $request->status;

    // Fetch required values for reg_no
    $centre = Centre::find($request->centre);
    $districtNo = str_pad($centre->district_no ?? '0', 2, '0', STR_PAD_LEFT);
    $centreNo = str_pad($request->centre, 2, '0', STR_PAD_LEFT);
    $batchNo = str_pad($request->batch, 2, '0', STR_PAD_LEFT);
    $courseNo = str_pad($request->course, 2, '0', STR_PAD_LEFT);
    $year = date('y');

    // Save student temporarily to get the ID
    $student->save();

    // Generate register number: W + year + district + centre + batch + course + student_id
    $registerNo = 'MS' . $year . $districtNo . $centreNo . $batchNo . $courseNo . str_pad($student->id, 3, '0', STR_PAD_LEFT);
    $student->reg_no = $registerNo;
    $student->save();

    $categories = $request->category; // array
    $courses = $request->course;



    if ($request->course) {
        $purchased = new StudentPurchasedCourse();
        $purchased->student_id = $student->id;
        $purchased->course_id = $request->course;
        $purchased->course_total_amount = $courseTotalAmount;
        $purchased->installment = $request->course_installment;
        $purchased->purchased_date = $student->created_at;
        $purchased->save();
    }
// Step 1: Fetch all tutors
$tutors = Tutor::all();
$tutorCount = $tutors->count();

        if ($tutorCount > 0) {
          $pointsPerTutor = 100 / $tutorCount;

    // Step 2: Save points for each tutor
    foreach ($tutors as $tutor) {
        $tutorPoint = new TutorPoints(); // Make sure this model exists
        $tutorPoint->student_id = $student->id;
        $tutorPoint->tutor_id = $tutor->id;
        $tutorPoint->points = $pointsPerTutor;
        $tutorPoint->save();
    }
}
    return redirect()->route('admin.student.index')->with('success', 'Student added successfully');
}

    public function studentallocatePoints(Request $request)
    {
        $request->validate([
            'tutor_id' => 'required|exists:tutors,id',
            'points'   => 'required|integer|min:1',
            'remarks'  => 'nullable|string|max:255',
        ]);

        // 1. Get the logged-in student's profile
        $student = Student::where('user_id', auth()->id())->first();
        if (!$student) {
            return back()->with('error', 'Student profile not found.');
        }

        // 2. Calculate total available points
        $availablePoints = TutorStudentPoint::where('student_id', $student->id)->sum('points');

        if ($availablePoints < $request->points) {
            return back()->with('error', 'Insufficient points to allocate.');
        }

        // 3. Deduct points from the first matching record (or distribute across multiple if needed)
        $pointsToDeduct = $request->points;
        $records = TutorStudentPoint::where('student_id', $student->id)->get();

        foreach ($records as $record) {
            if ($pointsToDeduct <= 0) break;

            $deduct = min($record->points, $pointsToDeduct);
            $record->points -= $deduct;
            $record->save();

            $pointsToDeduct -= $deduct;
        }

        // 4. Store allocation
        StudentAllocatedPoints::create([
            'tutor_id'   => $request->tutor_id,
            'student_id' => $student->id,
            'points'     => $request->points,
            'reason'    => $request->remarks,
        ]);


        return redirect()->back()->with('success', 'Points allocated successfully.');
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
        $purchasedCouse = StudentPurchasedCourse::where('student_id', $id)->first();
        $wishlistedCousers = StudentWishlistedCourse::where('student_id', $id)->get();
        $studentPayments = StudentPayment::where('student_id', $id)->orderBy('created_at', 'asc')->get();
        $totalDue = $studentPayments->sum('due_amount'); // Sum up all due amounts
        $totalPaid = $studentPayments->sum('pay_amount');
        $totalamount = 0;
        foreach ($studentPayments as $studentpayment) {
            // Calculate total due amount from previous payments
            $totalDue = $studentpayment->due_amount ?? 0;

            // Calculate the next installment
            $currentInstallment = $studentpayment->current_installment ?? 0;

            // Calculate total amount due (current installment + previous dues)
            $totalamount = $currentInstallment + $totalDue;

            // Calculate how much has already been paid in total
            $totalPaid = StudentPayment::where('student_id', $studentpayment->student_id)
                ->where('course_id', $studentpayment->course_id)
                ->sum('pay_amount');

            // Get total course amount
            $courseAmount = $studentpayment->amount ?? 0;

            // If total paid is greater than or equal to course amount, no next installment
            if ($totalPaid >= $courseAmount) {
                $totalamount = 0;
            }

            // Now you can echo or pass $totalamount to view
        }

        $totalPaid =  $studentPayments->sum('pay_amount');
        // $monthlyInstallment =  $purchasedCouse->course_total_amount/$purchasedCouse->installment;
        if ($purchasedCouse->installment > 0) {
            $monthlyInstallment = $purchasedCouse->course_total_amount / $purchasedCouse->installment;
            $monthlyInstallment = number_format($monthlyInstallment, 2); // Formats to two decimal places
        } else {
            $monthlyInstallment = 0; // Handle case where installment is zero
        }

        $courses = Course::where('status', 1)->pluck('title', 'id')->toArray();
        return view('admin.pages.students.show', compact('student', 'purchasedCouse', 'wishlistedCousers', 'courses', 'studentPayments', 'totalPaid', 'monthlyInstallment', 'totalamount', 'totalDue'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $student = Student::with('courses')->find($id);
        $student = Student::with('user')->findOrFail($id);
        $countries = Country::get();
        $batches = Batch::where('status', 1)->get();
        $courses = Course::where('status', 1)->get();
        $purchasedCousers = StudentPurchasedCourse::with('coursedtls')->where('student_id', $id)->first();
        $wishlistedCousers = StudentWishlistedCourse::where('student_id', $id)->get();
        return view('admin.pages.students.edit', compact('student', 'purchasedCousers', 'wishlistedCousers', 'countries', 'batches', 'courses'));
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
        $schemeDtl = Scheme::where('id', $student->scheme_id)->first();
        $offerPercentage = $schemeDtl->discount; // Assuming this is the offer percentage
        $courseFee = $request->course_fee;
        $discountAmount = ($courseFee * $offerPercentage) / 100;
        $courseTotalAmount = $courseFee - $discountAmount;
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
        $student->reg_no = $request->register_no;
        $student->course_id = $request->course;
        $student->status = $request->status;
        $student->save();

        $user = User::find($student->user_id);
        $user->name = $request->name;
        $user->email = $request->email;
        if ($request->password) {
            $user->password = Hash::make($request->password);
        }
        $user->mobile_no = $request->phone;
        $user->save();

        if ($request->course) {
            $purchased = StudentPurchasedCourse::where('student_id', $student->id)->first();
            if ($purchased) {
                // $purchased->students_id = $student->id;
                $purchased->course_id = $request->course;
                $purchased->course_total_amount = $courseTotalAmount;
                $purchased->installment = $request->course_installment;
                $purchased->purchased_date = $student->created_at;
                $purchased->save();
            } else {
                $purchased = new StudentPurchasedCourse();
                $purchased->student_id = $student->id;
                $purchased->course_id = $request->course;
                $purchased->course_total_amount = $courseTotalAmount;
                $purchased->installment = $request->course_installment;
                $purchased->purchased_date = $student->created_at;
                $purchased->save();
            }
        }

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
    public function getCategory(Request $request)
{
    $schemeId = $request->scheme_id;

    $categories = SchemeCategoryCourse::where('scheme_id', $schemeId)
        ->with('category:id,name') // only get id and name
        ->get()
        ->pluck('category')      // pluck the related category
        ->unique('id')           // remove duplicates
        ->values();              // reset keys

    return response()->json($categories);
}



    public function getCourse(Request $request)
    {
        $catId = $request->cat_id;
        $schemeId = $request->scheme_id;

        $courses = SchemeCategoryCourse::with('course')
            ->where('scheme_id', $schemeId)
            ->get()
            ->unique('course_id'); // Avoid duplicate courses

        return $courses;
    }
    public function getCentre(Request $request)
    {
        $courseId = $request->course_id;
        $course = CourseCentre::with('centre')  // Eager load 'category' with id and name columns
            ->where('course_id', $courseId)->get();
        return $course;
    }

    // fetch the batches linked to that course.
    public function getBatch(Request $request)
    {
        $centreId = $request->centre_id;

        $batch = Batch::where('centre_id', $centreId)
            ->get();

        return $batch;
    }


    // payment section

    public function addPayment(Request $request)
    {
        $studentId = $request->student_id;
        $courseId = $request->course_id;

        // Get the purchased course details
        $purchasedCourse = StudentPurchasedCourse::where('student_id', $studentId)
            ->where('course_id', $courseId)
            ->first();

        if (!$purchasedCourse) {
            return back()->with('error', 'Course not found for the student.');
        }

        // Total amount already paid
        $totalPaid = StudentPayment::where('student_id', $studentId)
            ->where('course_id', $courseId)
            ->sum('pay_amount');

        // Check if course is already fully paid
        if ($totalPaid >= $purchasedCourse->course_total_amount) {
            return back()->with('error', 'Payment already completed for this course. No further payments allowed.');
        }

        // Calculate monthly installment if applicable
        if ($purchasedCourse->installment > 0) {
    // round the per-installment amount (currency friendly)
    $monthlyInstallment = round($purchasedCourse->course_total_amount / $purchasedCourse->installment, 2);
} else {
    $monthlyInstallment = 0;
}

// Remaining balance AFTER applying this new payment
$remainingBalance = $purchasedCourse->course_total_amount - ($totalPaid + (float) $request->amount);
$dueAmount = $remainingBalance > 0 ? round($remainingBalance, 2) : 0;

        // Get last invoice number and last installment number
        $lastInvoice = StudentPayment::latest()->first();
        $installment = StudentPayment::where('student_id', $studentId)
            ->where('course_id', $courseId)
            ->latest()
            ->first();

        $invoiceNumber = $lastInvoice ? ((int) $lastInvoice->invoice_number + 1) : 1;

        // Save new payment
        $payment = new StudentPayment();
        $payment->student_id = $studentId;
        $payment->course_id = $courseId;
        $payment->invoice_number = $invoiceNumber;
        $payment->pay_amount = $request->amount;
        $payment->month = Carbon::parse($request->end_date)->format('F');
        $payment->end_date = Carbon::parse($request->end_date)->format('Y-m-d');
        $payment->installment = $installment ? $installment->installment + 1 : 1;
        $payment->amount = $purchasedCourse->course_total_amount;
        $payment->current_installment = $monthlyInstallment;
        $payment->due_amount = $dueAmount;
        // $payment->payment_date = Carbon::parse($request->payment_date)->format('Y-m-d H:i:s');
        $payment->payment_date = Carbon::parse($request->payment_date, 'Asia/Kolkata')->format('Y-m-d H:i:s');

        $payment->status = $request->status;
        $payment->save();

        return redirect()->route('admin.student.show', ['id' => $studentId])
            ->with('status', 'Payment added successfully.');
    }
}
    