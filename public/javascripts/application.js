// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

(function($){

  function registerOtherFieldTogglers() {
    $('input[type="checkbox"].toggleOtherField').click(function() {
      var other_field = $($(this).attr('data-other-field'))
      if (other_field.size() > 0) {
        other_field.attr('disabled', !$(this).attr('checked'));
      }
    });
  }

  $(document).ready(function() {
    registerOtherFieldTogglers();

    // put other functions which must be run when page is loaded here.
  });

})(jQuery);
