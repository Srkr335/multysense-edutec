<?php

namespace App\Console\Commands;
use App\Models\Centre;
use App\Models\Student;
use Illuminate\Console\Command;

class GenerateStudentRegNos extends Command
{
    protected $signature = 'students:generate-regnos';
    protected $description = 'Generate registration numbers for existing students who are missing them';

    public function handle()
    {
        // Fetch students with no reg_no
        $students = Student::whereNull('reg_no')->with('purchasedCourses')->get();

        foreach ($students as $student) {
        $centre = Centre::find($student->centre_id);

        if (!$centre) {
            $this->warn("⚠ Skipping student ID {$student->id} — Invalid centre.");
            continue;
        }

        $districtNo = is_numeric($centre->district_no) ? str_pad($centre->district_no, 2, '0', STR_PAD_LEFT) : '00';
        $centreNo   = str_pad($centre->centre_number, 2, '0', STR_PAD_LEFT);
        $batchNo    = str_pad($student->batch_id ?? 0, 2, '0', STR_PAD_LEFT);
        $firstCourse = optional($student->purchasedCourses)->first();
        $courseId = $firstCourse ? $firstCourse->course_id : 0;
        $courseNo = str_pad($courseId, 2, '0', STR_PAD_LEFT);

        $year = date('y', strtotime($student->created_at ?? now()));

        $registerNo = 'W' . $year . $districtNo . $centreNo . $batchNo . $courseNo . str_pad($student->id, 3, '0', STR_PAD_LEFT);

        $student->reg_no = $registerNo;
        $student->save();

        $this->info("✅ Assigned reg_no {$registerNo} to student ID {$student->id}");
        }


        $this->info('🎉 Registration numbers generated successfully!');
    }
}
