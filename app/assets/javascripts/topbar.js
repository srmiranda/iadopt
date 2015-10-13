$(document).ready(function() {

  var active0 = false;
  var active1 = false;
  var active2 = false;
  var active3 = false;
  var active4 = false;

    $('.parent2').on('mousedown touchstart', function() {

     if (!active0) $(this).find('.test0').css({'background-color': '#88ABC2', 'transform': 'translate(385px,-20px)'});
    else $(this).find('.test0').css({'background-color': 'silver', 'transform': 'none'});
     if (!active1) $(this).find('.test1').css({'background-color': '#88ABC2', 'transform': 'translate(310px,-20px)'});
    else $(this).find('.test1').css({'background-color': 'silver', 'transform': 'none'});
     if (!active2) $(this).find('.test2').css({'background-color': '#88ABC2', 'transform': 'translate(235px,-20px)'});
    else $(this).find('.test2').css({'background-color': 'silver', 'transform': 'none'});
     if (!active3) $(this).find('.test3').css({'background-color': '#88ABC2', 'transform': 'translate(160px,-20px)'});
    else $(this).find('.test3').css({'background-color': 'silver', 'transform': 'none'});
     if (!active4) $(this).find('.test4').css({'background-color': '#88ABC2', 'transform': 'translate(85px,-20px)'});
    else $(this).find('.test4').css({'background-color': 'silver', 'transform': 'none'});
    active0 = !active0;
    active1 = !active1;
    active2 = !active2;
    active3 = !active3;
    active4 = !active4;

    });
});
