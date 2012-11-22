$(document).ready ->
  $(".mapa").click ->
    $("#mapaModal").reveal
      animation: "fadeAndPop"
      animationSpeed: 200
      closeOnBackgroundClick: true 
      dismissModalClass: "close-reveal-modal"
      
     
