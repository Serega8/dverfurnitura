$(document).ready(function() {
    $('.mini').click(function() {
        var src = $(this).attr('src');
        $(".big_img").fadeOut(200, function() {
            $(".big_img").attr('src', src);
        }).fadeIn(200);
    });
    $(function() {
        $('#AGB').carouFredSel({
            auto: false,
            prev: '#agb_next',
            next: '#agb_prev',
            mousewheel: false,
            swipe: {
                onMouse: false,
                onTouch: false
            }
        });
        $('#pasini').carouFredSel({
            auto: false,
            prev: '#pasini_prev',
            next: '#pasini_next',
            mousewheel: false,
            swipe: {
                onMouse: false,
                onTouch: false
            }
        });
        $('#amig').carouFredSel({
            auto: false,
            prev: '#amig_prev',
            next: '#amig_next',
            mousewheel: false,
            swipe: {
                onMouse: false,
                onTouch: false
            }
        });
    });
    $('#logo').click(function() {
       window.location.href= '/'; 
    });
});