// Import Swiper
import Swiper from 'swiper/bundle'

// Initialize Swiper
document.addEventListener('DOMContentLoaded', function () {
    const swiper = new Swiper(".mySwiper", {
        slidesPerView: 1,
        spaceBetween: 10,
        slidesPerGroup: 1,
        loop: true,
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
        speed: 1000,
        // autoplay: {
        //   delay: 3000,
        //   disableOnInteraction: false,
        // },
        breakpoints: {
          1000: {
            slidesPerView: 3, // Na ekranach o szerokości 768px i więcej
            // spaceBetween: 30,
          },
          600: {
            slidesPerView: 2, // Na ekranach o szerokości 768px i więcej
            // spaceBetween: 30,
          },
        }
    });
});
