jQuery(document).ready(function () {
    App.init();
    App.initParallaxBg();
    ParallaxSlider.initParallaxSlider();
    $('.img-responsive').addClass("img-fluid");
    $('ul.list-inline>li').addClass("list-inline-item");
});

// Fix the bootstrap menu behavior in the mobile view
$(function () {
    $('.dropdown').hover(function () {
            $(this).addClass('open');
        },
        function () {
            $(this).removeClass('open');
        });
});
