<?php

namespace App\View\Components\cards;

use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;

class MemberCard extends Component
{

    public function __construct(
        public string $memberName,
        public string $memberImageURL,
        public string $vectorImageURL,
    )
    {
        //
    }

    public function render(): View|Closure|string
    {
        return view('components.cards.member-card');
    }
}
