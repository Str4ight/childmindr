/*=========================================
    Page: School Index page
    File: views/schools/index.html.erb
  =========================================*/

// drop down filter for q_category_town_id_eq & q_category_town_id_eq
$(document).ready(function () {
  $('#q_category_town_id_eq').hide();
  var category_town;
  category_town = $('#q_category_town_id_eq').html();
  return $('#q_category_zone_id_eq').change(function() {
    var category_zone, escaped_category_zone, options;
    category_zone = $('#q_category_zone_id_eq :selected').text();
    escaped_category_zone = category_zone.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
    options = $(category_town).filter("optgroup[label='" + escaped_category_zone + "']").html();
    if (options) {
      $('#q_category_town_id_eq').html(options);
      return $('#q_category_town_id_eq').show();
    } else {
      $('#q_category_town_id_eq').empty();
      return $('#q_category_town_id_eq').hide();
    }
  });
});

// drop down filter selection
$(document).ready(function() {
  $('.2').hide();
  $('#list').change(function() {
    $('.statecontent').hide();
    $('.' + $(this).val()).show();    
  });
});