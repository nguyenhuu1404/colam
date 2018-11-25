
$(document).ready(function(){
    $('.js-toggle-search').click(function(){
        $('body').toggleClass('show');
        $(this).find('i').toggleClass('fa-times');
    })

    $('.banner').slick({
        autoplay: true,
          autoplaySpeed: 5000
    });

    $('.slick-class').slick({
        dots: true,
        infinite: false,
        speed: 300,
        slidesToShow: 3,
        slidesToScroll: 3,
        autoplay: true,
          autoplaySpeed: 5000,
          arrows: false,
        responsive: [
            {
              breakpoint: 768,
              settings: {
                slidesToShow: 2,
                slidesToScroll: 2
              }
            },
            {
              breakpoint: 480,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1
                }
            }
        ]
    });


    $('.slick-user-info').slick({
        dots: true,
        infinite: false,
        speed: 300,
        slidesToShow: 1,
        slidesToScroll: 1,
        autoplay: true,
          autoplaySpeed: 5000,
          arrows: true,
    });
})
