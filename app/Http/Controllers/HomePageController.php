<?php

namespace App\Http\Controllers;

use App\Models\HomeSliderImgs;
use App\Models\Member;
use App\Models\Offer;
use App\Models\OurWork;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

class HomePageController extends Controller
{
    public function index()
    {   
        $offerColumns = Schema::getColumnListing((new Offer())->getTable());
        $filteredColumns = array_diff($offerColumns, ['created_at', 'updated_at', 'id']);

        return view('homePage.index',
            ['homeSliderImages' => HomeSliderImgs::select('home_slider_imgs')->get(),
             'members' => Member::select('member_name', 'member_image_url', 'vector_image_url', 'member_git_link', 'displaying', 'member_color', 'member_short_desc')->get(),
             'offers' => Offer::select('description', 'time', 'cost')->get(),
             'offerColumns' => $filteredColumns,
             'ourWorks' => OurWork::select('title', 'displaying','description','bg_color')->get(),
        ]);
    }
}
