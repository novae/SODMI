$(document).ready ->
  $(".mapa").click ->
    $("#mapaModal").reveal
      animation: "fadeAndPop"
      $("#mapaModal").css('display','block')
      animationSpeed: 100
      closeOnBackgroundClick: true 
      dismissModalClass: "close-reveal-modal"
      
     
