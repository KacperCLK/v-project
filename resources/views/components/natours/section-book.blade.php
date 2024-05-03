<section class="section-book">
    <div class="row">
        <div class="book">
            <img class="book__bg-img" src="/images/natours/nat-10.jpg">
            <div class="book__bg"></div>

            <div class="book__form">
                <form action="#" class="form">
                    <div class="u-margin-bottom-medium">
                        <h2 class="heading-secondary">
                            {{__('Start booking now')}}
                        </h2>
                    </div>
                    <div class="form__group">
                        <input id="name" type="text" class="form__input" placeholder="{{__('Full name')}}" required>
                        <label for="name" class="form__label">{{__('Full name')}}</label>
                    </div>
                    <div class="form__group">
                        <input id="email" type="email" class="form__input" placeholder="{{__('Email adress')}}" required>
                        <label for="email" class="form__label">{{__('Email adress')}}</label>
                    </div>
                    <div class="form__radio-group">
                        <input type="radio" class="form__radio-input" id="small" name="size">
                        <label for="small" class="form__radio-label">
                            <span class="form__radio-button"></span>    
                            {{__('Small tour group')}}
                        </label>
                    </div>
                    <div class="form__radio-group">
                        <input type="radio" class="form__radio-input" id="large" name="size">
                        <label for="large" class="form__radio-label">
                            <span class="form__radio-button"></span>
                            {{__('Larg tour group')}}
                        </label>
                    </div>

                    <div class="form__group u-margin-top-medium">
                        <button class="btn btn--green ">{{__('Next step')}} &rarr;</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>