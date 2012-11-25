$(document).ready ->
  #Slider Principal//
  $(window).load ->
    $("#slider").orbit()
  $("#cabecera").css("top","-70px").delay(1500).animate
    top: 0
  , 800

  $("#fondo-nubes").jqFloat
    width:195,
    height:1,
    speed:1500

  


