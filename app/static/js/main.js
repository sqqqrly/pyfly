function startTimer(duration, display) {
    var timer = duration, minutes, seconds;
    var __timer = setInterval(function () {
        minutes = parseInt(timer / 60, 10)
        seconds = parseInt(timer % 60, 10);

        minutes = minutes < 10 ? + minutes : minutes;
        seconds = seconds < 10 ? "0" + seconds : seconds;

        display.textContent = minutes + ":" + seconds;

        if (--timer < 0) {
            clearInterval(__timer);
            location.reload(true);
        }
    }, 1000);
}

window.onload = function() {
    var refresh_interval = 300,
        display = document.querySelector('#time');

    if (display) {
        startTimer(refresh_interval, display);
    }

    $('.expand').click(function() {
        target_num = $(this).attr('id').split('-')[1];
        content_id = '#expandable-'.concat(target_num);
        $(content_id).slideToggle(100);
    });

    $('.expand_all').click(function() {
        $('.expandable').slideDown(100);
    });

    $('.collapse_all').click(function() {
        $('.expandable').slideUp(100);
    });
};
