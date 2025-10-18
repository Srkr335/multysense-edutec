<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    use HasFactory;

    public function courcePlaylist()
    {
        return $this->belongsTo(CoursePlaylist::class, 'id', 'course_id');
    }

    public function category()
    {
        return $this->belongsTo(Category::class, 'category_id', 'id');
    }

    public function centre()
    {
        return $this->belongsTo(Centre::class, 'centre_id', 'id');
    }

    public function centres()
    {
        return $this->hasMany(CourseCentre::class, 'course_id', 'id');
    }

    public function centreIds()
    {
        return $this->centres()->pluck('centre_id')->toArray();
    }
    public function getDurationTextAttribute()
    {
        switch ($this->duration) {
            case 1:
                return '1 Year';
            case 2:
                return '6 Month';
            case 3:
                return '8 Month';
            default:
                return 'Unknown Duration';
        }
    }
}
