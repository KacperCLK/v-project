<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class OurWorksController extends Controller
{
    public function show(string $page)
    {   
        return view("ourWorks.$page.index");
    }
}
