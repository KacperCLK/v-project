<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OurWork extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'displaying',
        'description',
        'bg_color',
    ];
}
