<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CustomersMessages extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'email',
        'message',
    ];
}
