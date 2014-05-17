var when_page_is_ready = function() {

  $(function() {
    $( "#doctor_birth_date" ).datepicker();
  })

  $(function() {
    $( "#doctor_graduation_date" ).datepicker();
  })

}

$(document).ready(when_page_is_ready);
$(document).on("page:load", when_page_is_ready);