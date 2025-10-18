<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CourseCentre extends Model
{
    use HasFactory;

    
    protected $table = 'course_centres'; // if your table name is different, update this

    // ✅ Allow mass assignment for these fields
    protected $fillable = [
        'course_id',
        'centre_id',
    ];

    // (Optional) Define relationships
    public function course()
    {
        return $this->belongsTo(Course::class);
    }
    

    public function centre()
    {
        return $this->belongsTo(Centre::class, 'centre_id', 'id');
    }

}
