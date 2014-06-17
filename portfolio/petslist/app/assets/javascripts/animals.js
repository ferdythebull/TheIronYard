# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
var when_page_is_ready = function() {

  var option = $('<option></option>').attr("value", "option value").text("Text");
  $("#selectId").empty().append(option);

}

$(document).ready(when_page_is_ready);
$(document).on('page:load', when_page_is_ready);