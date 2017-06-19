var layout_helper = (function() {
  var adjust_background = function() {
    var window_size = $(window).width() - 950 + 32;
    var half_negative = window_size / 2 * -1;

    if (half_negative >= -16) {
      half_negative = -16;
    } else if (half_negative <= -190) {
      half_negative = -190;
    }

    $('.parallax')
      .css('margin-left', half_negative + 'px')
      .css('margin-right', half_negative + 'px');
  }

  var adjust_map = function() {
    var venuemap = $('#venuemap');
    var parent_width = venuemap.parent().width();

    venuemap.css('width', parent_width + 'px');
  }

  return {
    adjust_background: adjust_background,
    adjust_map: adjust_map
  }
})()

$(function() {
  layout_helper.adjust_background();

  $(window).resize(function() {
    layout_helper.adjust_background();
    layout_helper.adjust_map();
  })
})
;
