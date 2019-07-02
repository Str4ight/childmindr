// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require ckeditor/init
//= require_tree .

$(function(){ $(document).foundation(); });

// sigin-in alert message | devise signin/signout error messages
$(document).ready(function(){
  setTimeout(function(){
    $('#notice_wrapper').fadeOut("slow", function() {
      $(this).remove();
    })
  }, 2500);
});

// sigin-out alert message | devise signin/signout error messages
$(document).ready(function(){
  setTimeout(function(){
    $('#alert_wrapper').fadeOut("slow", function() {
      $(this).remove();
    })
  }, 2500);
});

// smooth scrolling
$(document).ready(function() {
  $('a[rel="relativeanchor"]').click(function(){
    $('html, body').animate({
      scrollTop: $( $.attr(this, 'href') ).offset().top
    }, 500);
    return false;
  }); 
});

// modal ratings
$(document).ready(function() {
  $('.star_one').hide();
  $('.star_two').hide();
  $('.star_three').hide();
  $('.star_four').hide();
  $('.star_five').hide();
  $('#reviewuser_category_ratingcommunication_id').change(function() {
    $('.row_dim_com').hide();
    $('.com' + $(this).val()).show();    
  });
});

$(document).ready(function() {
  $('.star_one').hide();
  $('.star_two').hide();
  $('.star_three').hide();
  $('.star_four').hide();
  $('.star_five').hide();
  $('#reviewuser_category_ratingclean_id').change(function() {
    $('.row_dim_cln').hide();
    $('.cln' + $(this).val()).show();    
  });
});

$(document).ready(function() {
  $('.star_one').hide();
  $('.star_two').hide();
  $('.star_three').hide();
  $('.star_four').hide();
  $('.star_five').hide();
  $('#reviewuser_category_ratingfood_id').change(function() {
    $('.row_dim_fod').hide();
    $('.fod' + $(this).val()).show();    
  });
});

$(document).ready(function() {
  $('.star_one').hide();
  $('.star_two').hide();
  $('.star_three').hide();
  $('.star_four').hide();
  $('.star_five').hide();
  $('#reviewuser_category_ratingsetting_id').change(function() {
    $('.row_dim_set').hide();
    $('.set' + $(this).val()).show();    
  });
});

$(document).ready(function() {
  $('.star_one').hide();
  $('.star_two').hide();
  $('.star_three').hide();
  $('.star_four').hide();
  $('.star_five').hide();
  $('#review_category_ratingteaching_id').change(function() {
    $('.row_dim_teach').hide();
    $('.teach' + $(this).val()).show();    
  });
});

$(document).ready(function() {
  $('.star_one').hide();
  $('.star_two').hide();
  $('.star_three').hide();
  $('.star_four').hide();
  $('.star_five').hide();
  $('#review_category_ratingfacility_id').change(function() {
    $('.row_dim_fac').hide();
    $('.fac' + $(this).val()).show();    
  });
});

$(document).ready(function() {
  $('.star_one').hide();
  $('.star_two').hide();
  $('.star_three').hide();
  $('.star_four').hide();
  $('.star_five').hide();
  $('#review_category_ratingfood_id').change(function() {
    $('.row_dim_sfod').hide();
    $('.sfod' + $(this).val()).show();    
  });
});

$(document).ready(function() {
  $('.star_one').hide();
  $('.star_two').hide();
  $('.star_three').hide();
  $('.star_four').hide();
  $('.star_five').hide();
  $('#review_category_ratingmusic_id').change(function() {
    $('.row_dim_mus').hide();
    $('.mus' + $(this).val()).show();    
  });
});

$(document).ready(function() {
  $('.star_one').hide();
  $('.star_two').hide();
  $('.star_three').hide();
  $('.star_four').hide();
  $('.star_five').hide();
  $('#review_category_ratingsport_id').change(function() {
    $('.row_dim_spot').hide();
    $('.spot' + $(this).val()).show();    
  });
});




