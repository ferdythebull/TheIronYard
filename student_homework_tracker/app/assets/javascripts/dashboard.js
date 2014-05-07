var when_page_is_ready = function() {}
  $('#myTab a').click(function (e) {
    console.log("hi");
    e.preventDefault()
    $(this).tab('show')
  })

};

$(document).ready(when_page_is_ready);
$(document).on("page:load", when_page_is_ready);