


var startPos = 0,winScrollTop = 0;
$(window).on('scroll',function(){
    winScrollTop = $(this).scrollTop();
	if (winScrollTop >= startPos) {
        $('.site-header').addClass('hide');
    } else {
        $('.site-header').removeClass('hide');
    }
    startPos = winScrollTop;
});

