/*=========================================
    Page: users registrations page
    File: views/users/registrations/_new.html.erb
  =========================================*/

// displays service when a segment [provider service] is selceted
$(function() {
  $('#row_dim').hide(); 
  $('#user_category_segment_id').change(function(){
    if($('#user_category_segment_id').val() == '2') {
      $('#row_dim').show(); 
    } else {
      $('#row_dim').hide(); 
    } 
  });
});
