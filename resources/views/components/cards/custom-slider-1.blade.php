<div class="custom-slider-1">
    <div id="left" class="custom-slider-1__arrow custom-slider-1__arrow--left"><</div>
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
    <div id="right" class="custom-slider-1__arrow custom-slider-1__arrow--right">></div>
</div>

<script defer>
    const wrapper = document.querySelector(".custom-slider-1");
    const carousel = document.querySelector(".custom-slider-1__carousel");
    const arrowBtns = document.querySelectorAll(".custom-slider-1__arrow");
    const firstCardWidht = carousel.querySelector(".custom-slider-1__card").offsetWidth;
    const carouselChildrens = [...carousel.children]; // Convert children to array

    let isDragging = false, startX, startScrollLeft, timeoutId;

    if(carouselChildrens.length > 3){
        // ----- Infinite scrolling -----
        // Get the number of cards that can fit in the carusel at once
        let cardPerView = Math.round(carousel.offsetWidth / firstCardWidht);

        // Insert copies of the last few cards to beginning of carousel for infinite crolling
        carouselChildrens.slice(-cardPerView).reverse().forEach(card => {
            carousel.insertAdjacentHTML("afterbegin", card.outerHTML)
        });

        // Insert copies of the first few cards to end of carousel for infinite scrolling
        carouselChildrens.slice(0, cardPerView).forEach(card => {
            carousel.insertAdjacentHTML("beforeend", card.outerHTML)
        });

        // ----- Buttons -----
        // Add event listeners for the arrow buttons to scroll the carousel left and right
        arrowBtns.forEach(btn => {
            btn.addEventListener("click", () => {
                const cardWidht = firstCardWidht + 4 * parseFloat(getComputedStyle(document.documentElement).fontSize);
                carousel.scrollLeft += btn.id === "left" ? -cardWidht : cardWidht;
                console.log(firstCardWidht);
            });
        });

        // ----- Sliding -----
        const dragStart = (e) => {
            isDragging = true;
            carousel.classList.add("custom-slider-1__carousel--dragging")

            // REcords the initial cursor and scroll position of the carousel
            startX = e.pageX
            startScrollLeft = carousel.scrollLeft
        }

        const dragging = (e) => {
            if(!isDragging) return; // if isDragging is false return from here

            // Updates the scroll position of the carousel based on the cursor movement
            carousel.scrollLeft = startScrollLeft - (e.pageX - startX);
        }

        const dragStop =() => {
            isDragging = false;
            carousel.classList.remove("custom-slider-1__carousel--dragging")
        }

        // ----- Auto scrolling -----
        const autoPlay = () => {
            if(window.innerWidth < 800) return; // Retrurn if width is less then 800 - mobiles devices

            //Autoplay the carousel after every 2500 ms
            // timeoutId = setTimeout(() => carousel.scrollLeft += firstCardWidht, 2500);
        }

        autoPlay();

        // ----- Infinite scrolling -----
        const infiniteScroll = () => {
            if(carousel.scrollLeft === 0) {
                carousel.classList.add("custom-slider-1__carousel--no-transition");
                carousel.scrollLeft = carousel.scrollWidth - (2 * carousel.offsetWidth);
                carousel.classList.remove("custom-slider-1__carousel--no-transition");
            } else if (Math.ceil(carousel.scrollLeft) === carousel.scrollWidth - carousel.offsetWidth) {
                carousel.classList.add("custom-slider-1__carousel--no-transition");
                carousel.scrollLeft = carousel.offsetWidth;
                carousel.classList.remove("custom-slider-1__carousel--no-transition");
            }

            // Clear existing timerout & start autoplay if mouse is not hovering over carousel
            clearTimeout(timeoutId);
            if (!wrapper.matches(":hover")) autoPlay();
        }

        carousel.addEventListener("mousedown", dragStart);
        carousel.addEventListener("mousemove", dragging);
        document.addEventListener("mouseup", dragStop);
        carousel.addEventListener("scroll", infiniteScroll);
        wrapper.addEventListener("mouseenter", () => clearTimeout(timeoutId));
        wrapper.addEventListener("mouseleave", autoPlay);
    } else {
        carousel.classList.add("custom-slider-1__carousel--center");
        arrowBtns.forEach(btn => {
            btn.classList.add("custom-slider-1__arrow--hidden");
        });
    }
</script>