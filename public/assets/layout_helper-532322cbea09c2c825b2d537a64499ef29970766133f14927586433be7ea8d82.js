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

  var adjust_carousels = function() {
    var width = $('#landing-carousel').width();
    var slice = 120;
    var half = slice / 2;
    $('img.carousel')
      .css('width', (width - slice) + 'px')
      .css('margin-left', half + 'px')
      .css('margin-right', half + 'px');

    $('.carousel-landing-caption')
      .css('margin-left', half + 'px')
      .css('margin-right', half + 'px');

    $('.carousel-indicators.carousel-landing')
      .css('top', (width - slice - 32) + 'px');

    //$('#jumbotron-title').parent().css('min-height', width + 'px');
  }

  var activate_workshop_link = function() {
    $('.clickable-workshop-link').off('click').on('click', function() {
      var that = $(this);

      if (that.hasClass('expanded')) {
        that.prev().remove();
        that.removeClass('expanded');
      } else {
        var t = '<span class="pull-right">&nbsp;'
              +   window.location.origin + window.location.pathname + '#' + $(this).attr('ldata')
              + '</span>';
        that.before(t);
        that.addClass('expanded');
      }
    })
  }

  var activate_hotlinked = function() {
    var hotlink = window.location.hash;

    if ($(hotlink).length == 0) return;
    
    $(hotlink).addClass('in');
    var ptop = $(hotlink).parent().offset().top;
    setTimeout(function() {
      $('html, body').scrollTop(ptop - 56);
    }, 250);
    
  }

  var activate_subsurveys = function() {
    var main_survey = $('#main-survey')
    var subsurveys = $('.subsurvey')

    main_survey.off('click').on('click', function(event) {
      event.preventDefault()
      if (main_survey.hasClass('opened')) {
        main_survey.removeClass('opened')
        main_survey.find('.glyphicon')
          .removeClass('glyphicon-menu-up')
          .addClass('glyphicon-menu-down')
        subsurveys.hide(250)
      } else {
        main_survey.addClass('opened')
        main_survey.find('.glyphicon')
          .removeClass('glyphicon-menu-down')
          .addClass('glyphicon-menu-up')
        subsurveys.show(250).css('display', 'block')  
      }
      
    })
  }

  return {
    activate_hotlinked: activate_hotlinked,
    activate_workshop_link: activate_workshop_link,
    adjust_background: adjust_background,
    adjust_carousels: adjust_carousels,
    adjust_map: adjust_map,
    activate_subsurveys: activate_subsurveys
  }
})()

$(function() {
  layout_helper.adjust_background();
  layout_helper.adjust_carousels();

  $(document).on('turbolinks:load', function() {
    layout_helper.activate_workshop_link();
  })
  

  $(window).resize(function() {
    layout_helper.adjust_background();
    layout_helper.adjust_map();
    layout_helper.adjust_carousels();
  })
})
;
