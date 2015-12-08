// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
$(document).ready(function(){
  $(".selector").click(populateFromLine);
});



var populateFromLine = function populateFromLine() {
  if ($("#line_line").val() != "") {
    var newLineId = $("#line_line").val();
    var newDiv = $("<div>").attr("id", newLineId).addClass("word-bank")
    var letterArray = newLineId.split('');
    for (var i = 0; i < letterArray.length; i++) {
      letterArray[i] = $("<p>")
        .attr("id", letterArray[i] )
        .addClass("letters")
        .text(letterArray[i])
        .appendTo("#emoji-container");
    $(letterArray[i]).click(explodeLetter);
    };
  }
};

//
var explodeLetter = function explodeLetter(e){
  var pop = new Audio("http://www.freesfx.co.uk/rx2/mp3s/3/3606_1329340920.mp3");
  $(e.target).addClass("destroyed");
  $(e.target).css('display', 'none');
  pop.play();
};
