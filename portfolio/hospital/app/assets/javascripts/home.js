// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

//jQuery is hard to understand!!!
// used to test if page works

//pagination is useful for displaying a limited number of results on search engine results pages. I'm going to add pagination for this... somehow!!

$(document).ready(function() {
  $(".submit").hide();
  $(".object-name").keyup(function() {
    if ( $(".object-name").val() ) {
      $(".submit").show();
      $(".required").fadeOut(2000);
    }
  });

  pageLength = 10;

  displayPage = function(page){
    $(".patient").hide();
    $(".patient").each(function(p){
      if(p >= pageLength * (page - 1) && p < pageLength * page)
        $(this).show();
    });
  }

  displayPage(1);

  $(".link li a").click(function() {
    displayPage(parseInt($(this).text()))
  });
});

var when_page_is_ready = function() {

  $(document.body).on("click", "a.change_workflow", function() {
    $.ajax({
      type: "PATCH",
      url: $(this).attr("patient_url"),
      dataType: "script"
    })
  });


//if you enter in any text to the name field of the submit form, the text "Required Field" below it disappears
};

$(document).ready(when_page_is_ready);
$(document).on("page:load", when_page_is_ready);