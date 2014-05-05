// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

//jQuery is hard to understand!!!
// used to test if page works

//pagination is useful for displaying a limited number of results on search engine results pages. I'm going to add pagination for this... somehow!!

var when_page_is_ready = function() {


//if you enter in any text to the name field of the submit form, the text "Required Field" below it disappears

  $(document).ready(function() {
    $(".submit").hide();
    $(".name").keyup(function() {
      console.log('true')
      if ( $(".name").val() ) {
        console.log('true')
        $(".submit").show();
      }
    });
  })
};

$(document).ready(when_page_is_ready);
$(document).on("page:load", when_page_is_ready);