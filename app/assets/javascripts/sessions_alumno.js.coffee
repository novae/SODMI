# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready ->
  $(".loginAlumno").click ->
    $("#loginAlumnoModal").reveal
      animation: "fadeAndPop"
      animationSpeed: 200
      closeOnBackgroundClick: true 
      dismissModalClass: "close-reveal-modal"
