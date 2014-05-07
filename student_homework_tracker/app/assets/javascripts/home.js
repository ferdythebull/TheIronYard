var when_page_is_loaded = function() {

  $(document).ready(function() {
    $('#myTab a').click(function (e) {
      console.log("hi");
      e.preventDefault()
      $(this).tab('show')
    })
  });

};

$(document).ready(when_page_is_loaded);
$(document).on("page:load", when_page_is_loaded);