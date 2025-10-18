<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Arr;
use App\Models\Student;

class FillStudentGroups extends Command
{
    /**
     * The name and signature of the console command.
     *
     * php artisan students:fill-groups
     */
    protected $signature = 'students:fill-groups';
    /**
     * The console command description.
     */
    protected $description = 'Fill NULL student groups with random group names';
    /**
     * Execute the console command.
     */
    public function handle()
    {
        $groups = ['Blue', 'Yellow', 'Red', 'Green'];
        $count = Student::whereNull('group')->count();
        if ($count === 0) {
            $this->info('No students found with NULL group.');
            return;
        }
        Student::whereNull('group')->chunkById(100, function ($students) use ($groups) {
            foreach ($students as $student) {
                $student->group = Arr::random($groups);
                $student->save();
            }
        });
        $this->info("Successfully updated {$count} students with random groups.");
    }
}
