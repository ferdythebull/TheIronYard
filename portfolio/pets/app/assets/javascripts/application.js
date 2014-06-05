// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.ui.all
//= require bootstrap
//= require turbolinks
//= require_tree .

$(function() {
  $("#user_birthday").datepicker({
    dateFormat : 'mm/dd/yy',
    changeMonth : true,
    changeYear : true,
    yearRange: '-100y:c+nn',
    maxDate: '-1d'
  });
});

function show_image_preview() {
  // read content here.
  var data = window.image_preview.document;
  if (data && data.getElementById("preview")) {
    // now either do something with the preview or just place the iframe so it
    // is already positioned correctly
  }
}

function file_field_changed() {
  var form = $('..');
  var original_action form.action;
  form.action = "special_preview_path";
  form.target = "image_preview";
  form.submit();

  form.action = original_action;
}