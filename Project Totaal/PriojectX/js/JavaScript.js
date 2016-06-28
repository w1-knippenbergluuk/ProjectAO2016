$(document).ready(function () {
    $(window).bind('scroll', function () {
        var headerHeight = $('#header').height();
        if ($(this).scrollTop() > headerHeight) {
            $('#menu').addClass('fixed');
            $('#scroll-logo').css('opacity', '1');
            $('#scroll-top').css('opacity', '1');
        }
        else {
            $('#menu').removeClass('fixed');
            $('#scroll-logo').css('opacity', '0');
            $('#scroll-top').css('opacity', '0');
        }
    });
    $('#scroll-top').on('click', function () {
        $('body,html').animate({
            scrollTop: '0px'
        }, 1000);
        return false;
    });
    $('.content-container,#menu ul li:gt(0)').on('click', 'a', function (event) {
        event.preventDefault();

        $('html, body').animate({
            scrollTop: $($.attr(this, 'href')).offset().top
        }, 1000);
    });

    $('.info a').click(function () {
        // alert('test');
        var clicks = $(this).data('clicks');
        if (clicks) {
            // odd clicks
            $(this).closest('div.container').find('div.info').css("height", "100px");


        }
        else {
            // even clicks
            $(this).closest('div.container').find('div.info').css("height", "500px");

        }
        $(this).data("clicks", !clicks);
    });

});