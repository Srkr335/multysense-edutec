<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Result;
use App\Models\Student;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Support\Facades\Cache;


class CertificateController extends Controller
{
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

    //  sl no
    $startSlNo = 2001;

    // Check if  already has a stored sl no
    $existingSlNo = Cache::get("student_{$student_id}_sl_no");

    if ($existingSlNo) {
        $result->sl_no = $existingSlNo; 
    } else {
        
        $lastSlNo = Cache::get('last_sl_no', $startSlNo - 1);
        $newSlNo = $lastSlNo + 1;

        Cache::put("student_{$student_id}_sl_no", $newSlNo);
        Cache::put('last_sl_no', $newSlNo);

        $result->sl_no = $newSlNo;
    }

    // Certificate No 
        $startCertificateNo = 1001;
    $existingCertNo = Cache::get("student_{$student_id}_cert_no");

    if ($existingCertNo) {
        $result->certificate_no = $existingCertNo;
    } else {
        $lastCertNo = Cache::get('last_certificate_no', $startCertificateNo - 1);
        $newCertNo = $lastCertNo + 1;

        Cache::put("student_{$student_id}_cert_no", $newCertNo);
        Cache::put('last_certificate_no', $newCertNo);

        $result->certificate_no = $newCertNo;
    }

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
