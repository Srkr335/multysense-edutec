<?php

namespace App\Http\Controllers\Admin;

use Carbon\Carbon;
use App\Models\Course;
use App\Models\Student;
use Illuminate\Http\Request;
use App\Models\StudentPayment;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Models\StudentPurchasedCourse;
use Yajra\DataTables\Facades\DataTables;

class PaymentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index()
    {
        return view('admin.pages.payment.index');
    }

public function getStudentPayment(Request $request)
{
    if ($request->ajax()) {
        $data = StudentPayment::leftJoin('students', 'students.id', 'student_payments.student_id')
            ->leftJoin('users', 'users.id', 'students.user_id')
            ->leftJoin('courses', 'courses.id', 'student_payments.course_id')
            ->leftJoin('centres', 'centres.id', 'students.centre_id')
            ->orderBy('student_payments.id', 'desc')
            ->select(
                'student_payments.id',
                'student_payments.student_id as student',
                'users.name',
                'users.email',
                'users.mobile_no',
                'student_payments.amount',
                'student_payments.month',
                'student_payments.end_date',
                'student_payments.status',
                'courses.title as course' // aliased to match DataTables
            );

        return DataTables::of($data)
            ->addIndexColumn()
            ->editColumn('student', function ($row) {
                return '<a href="' . route("admin.student.show", $row->student) . '">' . $row->name . '</a>';
            })
            ->editColumn('course', function ($row) {
                return $row->course ?? '<span class="text-danger">No Course</span>';
            })
            ->editColumn('month', function ($row) {
                $months = [
                    1 => 'January', 2 => 'February', 3 => 'March', 4 => 'April',
                    5 => 'May', 6 => 'June', 7 => 'July', 8 => 'August',
                    9 => 'September', 10 => 'October', 11 => 'November', 12 => 'December'
                ];
                return is_numeric($row->month) ? ($months[(int)$row->month] ?? '') : $row->month;
            })
            ->editColumn('end_date', function ($row) {
                return $row->end_date ? Carbon::parse($row->end_date)->format('d M, Y') : '';
            })
            ->editColumn('status', function ($row) {
                return $row->status === 1
                    ? '<span class="badge info-low">Active</span>'
                    : '<span class="badge info-inter">Inactive</span>';
            })
            ->addColumn('action', function ($row) {
                return '<div class="d-flex">
                    <a href="' . route("admin.payment.edit", $row->id) . '" class="btn btn-primary btn-sm mx-1">
                        <i class="fas fa-edit me-1"></i> Edit
                    </a>
                    <button data-url="' . route("admin.payment.delete", $row->id) . '" class="delete-payment btn btn-danger btn-sm mx-1">
                        <i class="fas fa-trash-alt me-1"></i> Delete
                    </button>
                </div>';
            })
            ->rawColumns(['student', 'course', 'status', 'action'])
            ->make(true);
    }
}
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $rollId = auth()->user()->roles[0]->id;
        $months = [
            1 => 'January',
            2 => 'February',
            3 => 'March',
            4 => 'April',
            5 => 'May',
            6 => 'June',
            7 => 'July',
            8 => 'August',
            9 => 'September',
            10 => 'October',
            11 => 'November',
            12 => 'December'
        ];
        if ($rollId == 2)  // role centre
        {
            $students = Student::where('centre_id', auth()->user()->centre->id)->where('status', 1)->get();
        } else {
            $students = Student::where('status', 1)->get();
        }
        $courses = Course::where('status', 1)->orderBy('created_at', 'desc')->get();

        return view('admin.pages.payment.create', compact('months', 'students', 'courses'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */

public function getStudentCourses(Request $request)
{
    return DB::select(
        'SELECT courses.* FROM courses 
         JOIN students ON courses.id = students.course_id 
         WHERE students.id = ?', 
        [$request->student_id]
    );
}

public function store(Request $request)
{
    $students = (array) $request->students;

    foreach ($students as $student) {
        $exist = StudentPayment::where('student_id', $student)
            ->where('course_id', $request->course)
            ->where('month', $request->month)
            ->first();

        if (!$exist) {
            $studentId = (int) $student;
            $courseId = (int) $request->course;

            // Get the purchased course details
            $purchasedCourse = DB::table('student_purchased_courses')
                ->where('student_id', $studentId)
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
            // Calculate monthly installment
            $installmentCount = $purchasedCourse->installment ?? 0; // fallback if column missing
            if ($installmentCount > 0) {
                dd('dkjhjkhd1');

                $monthlyInstallment = $purchasedCourse->course_total_amount / $installmentCount;
            } else {
                dd('dkjhjkhd2');

                $monthlyInstallment = 0;
            }
            // Calculate due amount
            $dueAmount = $purchasedCourse->course_total_amount - ($totalPaid + $request->amount);
            dd( $dueAmount);
            // Get latest invoice number
            $lastInvoice = StudentPayment::latest()->first();
            $invoiceNumber = $lastInvoice ? ((int) $lastInvoice->invoice_number + 1) : 1;
            $Installment = $dueAmount/$monthlyInstallment;
            dd( $Installment);
            // Save new payment
            $payment = new StudentPayment();
            $payment->student_id = $studentId;
            $payment->course_id = $courseId;
            $payment->invoice_number = $invoiceNumber;
            $payment->pay_amount = $request->amount;
              dd($payment->pay_amount);
            $payment->month = Carbon::parse($request->end_date)->format('m');
            dd($payment->month);
            $payment->end_date = Carbon::parse($request->end_date)->format('Y-m-d');
            $payment->installment = $Installment ;
            $payment->amount = $purchasedCourse->course_total_amount;
            $payment->current_installment = $monthlyInstallment;
            $payment->due_amount = $dueAmount;
            $payment->payment_date = Carbon::parse($request->payment_date)->format('Y-m-d');
            $payment->status = $request->status;
            $payment->save();
        }
    }
    return redirect()->route('admin.payment.index')
        ->with('status', 'Payments added successfully');
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
    public function edit(Request $request,$id)
    {
        $months = [1 => 'January',2 => 'February',3 => 'March',4 => 'April',5 => 'May',
                   6 => 'June',7 => 'July',8 => 'August',9 => 'September',10 => 'October', 11 => 'November',
                   12 => 'December'
        ];
        $students = Student::where('status', 1)->get();
        $payment = StudentPayment::find($id);
        return view('admin.pages.payment.edit', compact('months', 'students', 'payment'));
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
        $payment = StudentPayment::find($id);
        // $payment->student_id = $student;
        $payment->course_id = $request->course;
        $payment->amount = $request->amount;
        $payment->month = $request->month;
        $payment->end_date = Carbon::parse($request->end_date)->format('Y-m-d');
        $payment->status = $request->status;
        $payment->save();

        return redirect()->route('admin.payment.index')->with('status', 'Payments updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $payment = StudentPayment::find($id);
    
        if (!$payment) {
            return response()->json(['message' => 'Payment not found'], 404);
        }
    
        $payment->delete();
    
        return response()->json(['message' => 'Payment deleted successfully']);
    }
}