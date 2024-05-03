<?php

namespace App\View\Components\cards;

use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;

class Carousel extends Component
{
    public function __construct()
    {
        //
    }

    public function render(): View|Closure|string
    {
        return view('components.cards.carousel-bootstrap');
    }
}
