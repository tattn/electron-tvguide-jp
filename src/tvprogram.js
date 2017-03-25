window.onload = function() {
  $('#wrapper, .internalBlock, #tvpgm table').css({'width': '100%'});
  $('#header, #contents.clearfix, #bclst, #main, #sub, .generic_programMenu, #prevtime, #ListingsMargin, #footer').hide();

  let elements = [$('#yjContentsFooter'), $('#contents').next().next(), $('.internalBlock').next(), $('#nexttime')];
  for(var element of elements) {
    while (element.length > 0) {
      element.hide();
      element = element.next();
    }
  }

  $('.scroller').remove();
  $('.turnup').width($('.station').width());

  $('#ListingsHeader').remove();
};
