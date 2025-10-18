<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
       protected $fillable = [
        'name',
        'email',
        'scheme_id',
        'category',
        'course',
        'course_fee',
        'course_installment',
        'centre_id',
        'batch_id',
    ];

    protected $casts = [
        'category' => 'array',
        'course' => 'array',
        'course_fee' => 'array',
        'course_installment' => 'array',
    ];

    
    use HasFactory;
    
    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
    
    public function courses()
    {
        return $this->belongsTo(Course::class, 'course_id');
    }
    public function batches()
    {
        return $this->belongsTo(Batch::class, 'batch_id');
    }
    public function studentname()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
    public function centre()
    {
        return $this->belongsTo(Centre::class, 'centre_id', 'id');
    }
    public function purchasedCourses()
{
    return $this->hasMany(StudentPurchasedCourse::class, 'student_id');
}
public function tutors()
{
    return $this->belongsToMany(Tutor::class, 'student_tutor');
}
}