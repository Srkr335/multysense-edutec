<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tutor extends Model
{
    use HasFactory;

    
    protected $dates = ['deleted_at']; // Store delete timestamp

  
public function students()
{
    return $this->belongsToMany(Student::class, 'student_tutor');
}

// students allocation point(newly added)
public function user()
{
    return $this->belongsTo(User::class, 'user_id');
}

}
