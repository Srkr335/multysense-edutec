<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class StudentAllocatedPoints extends Model
{
    use HasFactory;
     protected $fillable = [
        'id', 'student_id','tutor_id','reason','points'
    ];
}
