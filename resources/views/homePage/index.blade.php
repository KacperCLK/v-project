<x-layouts.layout>
    <x-layouts.header :links="[
        __('Home') => url()->current() . '#home',
        __('About us') => url()->current() . '#aboutUs',
        __('Offers') => url()->current() . '#offers',
        __('Contact') => url()->current() . '#contact',
        __('Our Works') => url()->current() . '#ourWorks',
    ]"/>
    
    <x-cards.card-home id="home" :homeSliderImages="$homeSliderImages"/>
    <x-cards.card-about-us id="aboutUs" :members="$members"/>
    <x-cards.card-offers id="offers" :offerColumns="$offerColumns" :offers="$offers"/>
    <x-cards.card-contact id="contact"/>
    <x-cards.card-our-works id="ourWorks" :ourWorks="$ourWorks"/>

    <x-layouts.footer :links="[
        __('Home') => url()->current() . '#home',
        __('About us') => url()->current() . '#aboutUs',
        __('Offers') => url()->current() . '#offers',
        __('Contact') => url()->current() . '#contact',
        __('Our Works') => url()->current() . '#ourWorks',
    ]"/>
</x-layouts.layout>