$(".btnUpHour").click(function(){
   var num = $(this).parent(".timeContainer").find(".timenumber");
    var val = parseInt($(num).text())
    if(val < 60) //change this if you wan't hour logic
        $(num).text(("0" + (val + 1)).slice(-2));
});

$(".btnUpMinute").click(function(){
   var num = $(this).parent(".timeContainer").find(".timenumber");
    var val = parseInt($(num).text())
    if(val < 60) //change this if you wan't hour logic
        $(num).text(("0" + (val + 10)).slice(-2));
});

$(".btnDownHour").click(function(){
    var num = $(this).parent(".timeContainer").find(".timenumber");
    var val = parseInt($(num).text())
    if(val > 0) //probably you won't change this
        $(num).text(("0" + (val - 1)).slice(-2));
});

$(".btnDownMinute").click(function(){
    var num = $(this).parent(".timeContainer").find(".timenumber");
    var val = parseInt($(num).text())
    if(val > 0) //probably you won't change this
        $(num).text(("0" + (val - 10)).slice(-2));
});

$('#event-submit-button').on('click', function(event) {
  event.preventDefault(); // Won't go back to top.
  var timeHour = $('#time-hour').text()
  var timeMinute = $('#time-minute').text()

  $('#event_start_time').val(timeHour + ':' + timeMinute)

  $('#new_event').submit()
  // Do something else
});