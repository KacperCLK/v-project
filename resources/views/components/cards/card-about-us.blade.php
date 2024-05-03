@props(['id' => '', 'members' => []])

<div id="{{ $id }}" class="card-about-us u-margin-bottom-huge">
    <div class="card-about-us__container">
        {{-- Heading + subtitle --}}
        <div class="card-about-us__title"> {{ __('ABOUT US') }} </div>
        <div class="card-about-us__subtitle">
            <span class="card-about-us__subtitle__text">
                {{ __('We are a group of young but experienced programmers.') }} 
            </span>
        </div>

        <div class="custom-slider-1">
            
            <ul class="custom-slider-1__carousel">
                @foreach ($members as $member)
                    @if ($member->displaying)
                        <li class="custom-slider-1__card">
                            <div class="custom-slider-1__img" style="background-color: {{$member->member_color}};">
                                <img class="custom-slider-1__img__member-img" src="{{$member->member_image_url}}" alt="img" draggable="false">
                                <a href="{{$member->member_git_link}}" class="custom-slider-1__img__vector">
                                    <img class="custom-slider-1__img__vector__img" src="{{$member->vector_image_url}}" alt="img" draggable="false">
                                </a>
                            </div>
                            <h2 class="custom-slider-1__carousel__name">{{$member->member_name}}</h2>
                            <span class="custom-slider-1__carousel__description">{{$member->member_short_desc}}</span>
                        </li>
                    @endif
                @endforeach
            </ul>
        </div>

        {{-- Jak ogarnę slider to będzie w poniższej karcie: --}}
        {{-- <x-cards.custom-slider-1 :members="$members"/> --}}
    </div>
</div>