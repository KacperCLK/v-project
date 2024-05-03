<?php

namespace App\View\Components\layouts;

use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;

class Footer extends Component
{
    public function __construct(
        public array $links,
        )
    {
        //
    }

    public function render(): View|Closure|string
    {
        return view('components.layouts.footer');
    }
}
