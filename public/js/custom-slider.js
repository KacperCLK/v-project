const initSlider = () => {
    const imageList = document.querySelector(".slider-wrapper .image-list");
    const slideButtons = document.querySelectorAll(".slider-wrapper .slide-button");
    const sliderScrollbar = document.querySelector(".container .slider-scrollbar");
    const scrollbarThumb = sliderScrollbar.querySelector(".scrollbar-thumb");
    const maxScrollLeft = imageList.scrollWidth - imageList.clientWidth;


    // Set number of images in image-list styles
    const imageItems = document.querySelectorAll('.slider-wrapper .image-list .member-card');
    const numItems = imageItems.length;
    const gridTemplateColumns = `repeat(${numItems}, 1fr)`;
    imageList.style.gridTemplateColumns = gridTemplateColumns;
    
    // Set the ability to scroll if the number of images required
    const maxAmountOfImages = (imageList.clientWidth)/(imageItems[0].clientWidth)
    if (numItems < maxAmountOfImages) {
        sliderScrollbar.style.display = "none";
        slideButtons[1].style.display = "none";
        const sliderWrapper = document.querySelector('.slider-wrapper');
        sliderWrapper.style.display = "grid";
        sliderWrapper.style.justifyContent = "center";
    }

    // Handle scrollbar thumb drag
    scrollbarThumb.addEventListener("mousedown", (e) => {
        const startX = e.clientX;
        const thumbPosition = scrollbarThumb.offsetLeft;

        // Update thumb position on mouse move
        const handleMouseMove = (e) => {
            const deltaX = e.clientX - startX;
            const newThumbPosition = thumbPosition + deltaX;
            const maxThumbPosition = sliderScrollbar.getBoundingClientRect().width - scrollbarThumb.offsetWidth;

            const boundedPosition = Math.max(0, Math.min(maxThumbPosition, newThumbPosition));
            const scrollPosition = (boundedPosition / maxThumbPosition) * maxScrollLeft;

            scrollbarThumb.style.left = `${boundedPosition}px`;
            imageList.scrollLeft = scrollPosition;
        }

        // Remove event listeners on mouse up
        const handleMouseUp = () => {
            document.removeEventListener("mousemove", handleMouseMove);
            document.removeEventListener("mouseup", handleMouseUp);
        }

        // Add event listeners for drag interaction
        document.addEventListener("mousemove", handleMouseMove);
        document.addEventListener("mouseup", handleMouseUp);
    });

    // Slide images according to the slide button clicks
    slideButtons.forEach(button => {
        button.addEventListener("click", () => {
            const direction = button.id === "prev-slide" ? -1: 1;
            const scrollAmount = imageList.clientWidth * direction/2;
            imageList.scrollBy({ left: scrollAmount, behavior: "smooth" });
        });
    });

    const handleSildeButtons = () => {
        slideButtons[0].style.display = imageList.scrollLeft <= 0 ? "none" : "block";
        slideButtons[1].style.display = imageList.scrollLeft >= maxScrollLeft ? "none" : "block";
    }

    //Update scrollbar thumb position based on image scroll
    const updeteScrollThumbPosition = () => {
        const scrollPosition = imageList.scrollLeft;
        const maxThumbPosition = sliderScrollbar.clientWidth - scrollbarThumb.offsetWidth;
    
        const thumbPosition = (scrollPosition / (imageList.scrollWidth - imageList.clientWidth)) * maxThumbPosition;
    
        scrollbarThumb.style.left = `${thumbPosition}px`;
    }

    imageList.addEventListener("scroll", () => {
        handleSildeButtons();
        updeteScrollThumbPosition();
    });
}

window.addEventListener("load", initSlider)