// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

//jQuery is hard to understand!!!
// used to test if page works

//pagination is useful for displaying a limited number of results on search engine results pages. I'm going to add pagination for this... somehow!!

var when_page_is_ready = function() {

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
  //all the patients are listed out on the page. Then, all of the patients are hidden. Then, up to 10 patients are shown. If there is more than 10 patients to be shown, the rest of the patients are divided up into more pages within groupings of 10
  showPage = function(page) {
    $(".patient").hide();
    $(".patient").show();
  }
  showPage(1);

  

};

$(document).ready(when_page_is_ready);
$(document).on("page:load", when_page_is_ready);

