$( function () {
  $( "#open_post" ).click(function() {
  $( "#post_modal").removeClass('hidden')
});
  $( "#close_post" ).click(function() {
  $( "#post_modal").addClass('hidden')
});
  $( "#open_signup" ).click(function() {
  $( "#user_modal").removeClass('hidden')
});
   $( "#open_login" ).click(function() {
  $( "#sessions_modal").removeClass('hidden')
});
   $( ".fa-arrow-up" ).click(function() {
    $(this).css('color', "white");
    $(this).click(function () { return false; });
  });
})