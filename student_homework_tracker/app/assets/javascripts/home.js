var when_page_is_loaded = function() {

  $('#myTab a').click(function (e) {
    console.log("hi");
    e.preventDefault()
    $(this).tab('show')
  })
  
  $("#myTab a:first").click()  

  $("div.accordion").accordion({
  })

  $("#accordion").accordion({collapsible: true, active: false });

  $(".course_check").hide();
    $(".location_check").change(function() {
      var location_id = $(this).attr("location_id")
        $(".location_" + location_id).show()
    })

  $(".alert").addClass("in").fadeOut(4500);

  $(document.body).on("click", "a.change_workflow", function() {
    $.ajax({
      type: "PATCH",
      url: $(this).attr("submission_url"),
      dataType: "script"
    })
  });

  $(function() {
    $( "#assignment_due_date" ).datepicker();
  })

};

$(document).ready(when_page_is_loaded);
$(document).on("page:load", when_page_is_loaded);