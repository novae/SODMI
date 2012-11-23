$(document).ready ->
  #Slider Principal//
  $(window).load ->
    $("#slider").orbit()
    $("#cabecera").css("top","-70px").delay(1500).animate
      top: 0
    , 800

  $("#imagen").jqFloat
    width:1000,
    height:1,
    speed:8000
  


