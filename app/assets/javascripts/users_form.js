/*=========================================
    Page: users form page
    File: views/users/_form.html.erb
  =========================================*/

// display users uploaded image
function readURL(input) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();
    reader.onload = function(e) {
      $('#imagePreview').css('background-image', 'url('+e.target.result +')');
      $('#imagePreview').hide();
      $('#imagePreview').fadeIn(650);
    }
    reader.readAsDataURL(input.files[0]);
  }
}
$("#imageUpload").change(function() {
  readURL(this);
});


// displays service when a segment [provider service] is selceted
$(function() {
  if($('#user_category_segment_id').val() == '1') {
    $('#row_dim_section').hide(); 
    $('#user_category_segment_id').change(function(){
      if($('#user_category_segment_id').val() == '2') {
        $('#row_dim_section').show(); 
      } else {
        $('#row_dim_section').hide(); 
      } 
    });
  } else if ($('#user_category_segment_id').val() == '2') {
    $('#row_dim_section').show(); 
    $('#user_category_segment_id').change(function(){
      if($('#user_category_segment_id').val() == '2') {
        $('#row_dim_section').show(); 
      } else {
        $('#row_dim_section').hide(); 
      } 
    });
  }
});
