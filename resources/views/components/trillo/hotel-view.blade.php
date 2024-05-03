<main class="hotel-view">
    <div class="gallery">
        <figure class="gallery__item">
            <img src="/images/trillo/hotel-1.jpg" alt="Photo of hotel 1" class="gallery__photo">
        </figure>
        <figure class="gallery__item">
            <img src="/images/trillo/hotel-2.jpg" alt="Photo of hotel 2" class="gallery__photo">
        </figure>
        <figure class="gallery__item">
            <img src="/images/trillo/hotel-3.jpg" alt="Photo of hotel 3" class="gallery__photo">
        </figure>
    </div>

    <div class="overview">
        <h1 class="overview__heading">
            {{__('Hotel Las Palmas')}}
        </h1>
        <div class="overview__stars">
            <svg class="overview__icon-stars">
                <use xlink:href="/images/trillo/sprite.svg#icon-star"/>
            </svg>
            <svg class="overview__icon-stars">
                <use xlink:href="/images/trillo/sprite.svg#icon-star"/>
            </svg>
            <svg class="overview__icon-stars">
                <use xlink:href="/images/trillo/sprite.svg#icon-star"/>
            </svg>
            <svg class="overview__icon-stars">
                <use xlink:href="/images/trillo/sprite.svg#icon-star"/>
            </svg>
            <svg class="overview__icon-stars">
                <use xlink:href="/images/trillo/sprite.svg#icon-star"/>
            </svg>
        </div>

        <div class="overview__location">
            <svg class="overview__icon-location">
                <use xlink:href="/images/trillo/sprite.svg#icon-location-pin"/>
            </svg>
            <button class="btn-inline">{{__('Albufeira, Portugal')}}</button>
        </div>

        <div class="overview__rating">
            <div class="overview__rating-average">{{__('8.6')}}</div>
            <div class="overview__rating-count">{{__('435 votes')}}</div>
        </div>
    </div>

    <div class="detail">
        <div class="description">
            <p class="paragraph">
                {{__('lorem45')}}
            </p>

            <p class="paragraph">
                {{__('lorem15')}}
            </p>

            <ul class="list">
                <li class="list__item">{{__('Close to the beach')}}</li>
                <li class="list__item">{{__('Breakfest included')}}</li>
                <li class="list__item">{{__('Free airport shuttle')}}</li>
                <li class="list__item">{{__('Free wifi in all rooms')}}</li>
                <li class="list__item">{{__('Air conditioning and heating')}}</li>
                <li class="list__item">{{__('Pets allowed')}}</li>
                <li class="list__item">{{__('We speak all langueges')}}</li>
                <li class="list__item">{{__('Perfect for falimies')}}</li>
            </ul>

            <div class="recommend">
                <p class="recommend__count">
                    {{__('Lucy and 3 other friends recomend this hotel.')}}
                </p>
                <div class="recommend__friends">
                    <img src="/images/trillo/user-3.jpg" alt="Friend 1" class="recommend__photo">
                    <img src="/images/trillo/user-4.jpg" alt="Friend 2" class="recommend__photo">
                    <img src="/images/trillo/user-5.jpg" alt="Friend 3" class="recommend__photo">
                    <img src="/images/trillo/user-6.jpg" alt="Friend 4" class="recommend__photo">
                </div>
            </div>
        </div>

        <div class="user-reviews">
            <figure class="review">
                <blockquote class="review__text">
                    {{__('lorem30')}}
                </blockquote>
                <figcaption class="review__user">
                    <img src="/images/trillo/user-1.jpg" alt="User 1" class="review__photo">
                    <div class="review__user-box">
                        <p class="review__user-name">{{__('Nick Smith')}}</p>
                        <p class="review__user-date">{{__('Feb 23rd, 2017')}}</p>
                    </div>
                    <div class="review__rating">{{__('7.8')}}</div>
                </figcaption>
            </figure>

            <figure class="review">
                <blockquote class="review__text">
                    {{__('lorem15')}}   
                </blockquote>
                <figcaption class="review__user">
                    <img src="/images/trillo/user-2.jpg" alt="User 2" class="review__photo">
                    <div class="review__user-box">
                        <p class="review__user-name">{{__('Mary Thomas')}}</p>
                        <p class="review__user-date">{{__('Sept 13th, 2017')}}</p>
                    </div>
                    <div class="review__rating">{{__('9.3')}}</div>
                </figcaption>
            </figure>

            <button class="btn-inline">{{__('Show all')}} <span>&rarr;</span></button>
        </div>
    </div>

    <div class="cta">
        <h2 class="cta__book-now">
            {{__('Good news! We have 4 free rooms for yoyr selected dates!')}}
        </h2>

        <button class="btn">
            <span class="btn__visible">{{__('Book now')}}</span>
            <span class="btn__invisible">{{__('Only 4 rooms left')}}</span>
        </button>
    </div>
</main>