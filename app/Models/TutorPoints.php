<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TutorPoints extends Model
{
    use HasFactory;

      protected $table = 'tutor_points';
    protected $fillable = [
        'tutor_id',
        'points',
    ];
}
