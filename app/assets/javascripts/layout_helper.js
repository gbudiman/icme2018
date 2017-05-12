var layout_helper = (function() {
  var adjust_background = function() {
    var window_size = $(window).width() - 950 + 32;
    var half_negative = window_size / 2 * -1;

    if (half_negative >= -16) {
      half_negative = -16;
    }

    $('.parallax')
      .css('margin-left', half_negative + 'px')
      .css('margin-right', half_negative + 'px');
  }

  return {
    adjust_background: adjust_background
  }
})()

$(function() {
  layout_helper.adjust_background();

  $(window).resize(function() {
    layout_helper.adjust_background();
  })
})