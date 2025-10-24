<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Carbon\Carbon;

class ResultsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $students = DB::table('students')->pluck('id'); // Assuming you have students
        $exams = DB::table('exams')->pluck('id');       // Assuming you have exams
        $batches = DB::table('batches')->pluck('id');
        $courses = DB::table('courses')->pluck('id');
        $centres = DB::table('centres')->pluck('id');

        $slno = 1001;
        $certificateno=2001;

        foreach (range(1, 50) as $i) { // Create 50 dummy results
            $student_id = $students->random();
            $exam_id = $exams->random();
            $batch_id = $batches->random();
            $course_id = $courses->random();
            $centre_id = $centres->random();

            $marks = rand(30, 100);
            $totalQuestions = 100;
            $correct = rand(0, $marks);
            $wrong = $totalQuestions - $correct;
            $percentage = ($marks / $totalQuestions) * 100; 
            
            // Determine grade
            if ($percentage >= 90) $grade = 'A+';
            elseif ($percentage >= 80) $grade = 'A';
            elseif ($percentage >= 70) $grade = 'B+';
            elseif ($percentage >= 60) $grade = 'B';
            elseif ($percentage >= 50) $grade = 'C';
            else $grade = 'F';

            $resultStatus = $percentage >= 50 ? 'pass' : 'fail';

            DB::table('results')->insert([
                'slno' => $slno++,
                'certificateno' =>$certificateno++,
                'exam_id' => $exam_id,
                'exam_name' => 'Exam ' . $exam_id,
                'batch_id' => $batch_id,
                'course_id' => $course_id,
                'centre_id' => $centre_id,
                'student_id' => $student_id,
                'reg_no' => 'MS' . rand(1000, 9999),
                'marks' => $marks,
                'correct_answer_count' => $correct,
                'wrong_answer_count' => $wrong,
                'percentage' => round($percentage, 2),
                'grade' => $grade,
                'result' => $resultStatus,
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ]);
        }
    }
}
