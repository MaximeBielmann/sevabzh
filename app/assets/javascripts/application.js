// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require activestorage
//= require turbolinks
//= require_tree .
//= require filterrific/filterrific-jquery


function myFunction() {
  // Get the checkbox
  var checkBox = document.getElementById("myCheck");
  // Get the output text
  var text = document.getElementsByClassName("red");

  // If the checkbox is checked, display the output text
  if (checkBox.checked == true){
    for (var i=0;i<text.length;i+=1){
    text[i].style.display = "block";}
  } else {
    for (var i=0;i<text.length;i+=1){
    text[i].style.display = "none";}
  }
} 
