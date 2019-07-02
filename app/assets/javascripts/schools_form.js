/*=========================================
    Page: School Form page
    File: views/schools/_form.html.erb
  =========================================*/

// drop down filter for category_zone & category_town
$(document).ready(function () {
  $('#school_category_town_id').hide();
  var category_town;
  category_town = $('#school_category_town_id').html();
  return $('#school_category_zone_id').change(function() {
    var category_zone, escaped_category_zone, options;
    category_zone = $('#school_category_zone_id :selected').text();
    escaped_category_zone = category_zone.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
    options = $(category_town).filter("optgroup[label='" + escaped_category_zone + "']").html();
    if (options) {
      $('#school_category_town_id').html(options);
      return $('#school_category_town_id').show();
    } else {
      $('#school_category_town_id').empty();
      return $('#school_category_town_id').hide();
    }
  });
});


