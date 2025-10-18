<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Result;
use App\Models\Student;
use Barryvdh\DomPDF\Facade\Pdf;

class CertificateController extends Controller
{
    public function generateCertificate($student_id)
    {
        // Fetch student and related user
        $student = Student::with('user')->find($student_id);

        if (!$student) {
            abort(404, 'Student not found');
        }

        // Fetch latest result for student
        $result = Result::with(['student.user', 'course', 'batch', 'exam.centre'])
                        ->where('student_id', $student_id)
                        ->latest()->first();

        if (!$result) {
            abort(404, 'Result not found');
        }

        $data = [
            'student' => $student,
            'result' => $result,
            'date' => now()->format('d-m-Y'),
        ];

        $pdf = Pdf::loadView('admin.pages.certificates.result', $data)->setPaper('a4', 'portrait');
        return $pdf->download('Certificate_' . $result->reg_no . '.pdf');
    }
    
    


}
