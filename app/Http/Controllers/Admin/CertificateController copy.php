<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Result;
use App\Models\Student;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Support\Facades\Cache;


class CertificateController extends Controller
{
    // public function generateCertificate($student_id)
    // {
    //     // Fetch student and related user
    //     $student = Student::with('user')->find($student_id);

    //     if (!$student) {
    //         abort(404, 'Student not found');
    //     }

    //     // Fetch latest result for student
    //     $result = Result::with(['student.user', 'course', 'batch', 'exam.centre'])
    //                     ->where('student_id', $student_id)
    //                     ->latest()->first();

    //     if (!$result) {
    //         abort(404, 'Result not found');
    //     }

    //     $data = [
    //         'student' => $student,
    //         'result' => $result,
    //         'date' => now()->format('d-m-Y'),
    //     ];

    //     $pdf = Pdf::loadView('admin.pages.certificates.result', $data)->setPaper('a4', 'portrait');
    //     return $pdf->download('Certificate_' . $result->reg_no . '.pdf');
    // }



    // public function generateCertificate($student_id)
    // {
    //     // Fetch student and result
    //     $student = Student::with('user')->find($student_id);
    //     if (!$student) abort(404, 'Student not found');

    //     $result = Result::with(['student.user', 'course', 'batch', 'exam.centre'])
    //                     ->where('student_id', $student_id)
    //                     ->latest()
    //                     ->first();
    //     if (!$result) abort(404, 'Result not found');

    //     // --- Get last SL No from cache ---
    //     $startSlNo = 2002; // default starting number
    //     $lastSlNo = Cache::get('last_sl_no', $startSlNo - 1); // default 2001 if not set


    //     $startcertificateNo = 1001; // default starting number
    //     $lastcertificateNo = Cache::get('last_certificate_no', $startcertificateNo - 1); // default 1000 if not set
    //     // Increment by 1
    //     $result->sl_no = $lastSlNo + 1;

    //     // Store updated SL No back in cache
    //     Cache::put('last_sl_no', $result->sl_no);
    // Cache::put('last_certificate_no', $result->lastcertificateNo + 1);
    //     // Prepare data for PDF
    //     $data = [
    //         'student' => $student,
    //         'result'  => $result,
    //         'date'    => now()->format('d-m-Y'),
    //     ];

    //     $pdf = Pdf::loadView('admin.pages.certificates.result', $data)
    //               ->setPaper('a4', 'portrait');

    //     return $pdf->download('Certificate_' . $result->reg_no . '.pdf');
    // }


    public function generateCertificate($student_id)
    {
        // Fetch student and result
        $student = Student::with('user')->find($student_id);
        if (!$student) abort(404, 'Student not found');

        $result = Result::with(['student.user', 'course', 'batch', 'exam.centre'])
            ->where('student_id', $student_id)
            ->latest()
            ->first();
        if (!$result) abort(404, 'Result not found');

        // --- SL No ---
        $startSlNo = 2002; // default starting number
        $lastSlNo = Cache::get('last_sl_no', $startSlNo - 1); // default 2001 if not set
        $result->sl_no = $lastSlNo + 1;
        Cache::put('last_sl_no', $result->sl_no);

        // --- Certificate No ---
        $startCertificateNo = 1001;
        $lastCertificateNo = (int) Cache::get('last_certificate_no', $startCertificateNo - 1);
        $result->certificate_no = $lastCertificateNo + 1;
        Cache::put('last_certificate_no', $lastCertificateNo + 1);


        // Prepare data for PDF
        $data = [
            'student' => $student,
            'result'  => $result,
            'date'    => now()->format('d-m-Y'),
        ];

        $pdf = Pdf::loadView('admin.pages.certificates.result', $data)
            ->setPaper('a4', 'portrait');

        return $pdf->download('Certificate_' . $result->reg_no . '.pdf');
    }
}
