// -----------------------------------------
//   Section: header
//   File: views/shared/_header.html.erb
// -----------------------------------------

// responsive menu
$(document).ready(function() {
  $(".responsive_header_content").hide();
  $( ".icon_menu" ).click(function() {
    $(".responsive_header_content" ).slideToggle( "slow", function() {
      // Animation complete.
    });
  });
});


// user icon dropdown
$(document).ready(function() {
  $(".profile_menu_content").hide();
  $( ".profile_menu_icon" ).click(function() {
    $(".profile_menu_content" ).slideToggle( "fast", function() {
      // Animation complete.
    });
  });
});
