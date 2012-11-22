$(function() {
  $('.error').hide();
  $('input.text-input').css({backgroundColor:"#FFFFFF"});
  $('input.text-input').focus(function(){
  $(this).css({backgroundColor:"#FFDDAA"});
  });
  $('input.text-input').blur(function(){
    $(this).css({backgroundColor:"#FFFFFF"});
  });
 
  $(".button").click(function() {
	
    $('.error').hide();
	/** VALIDAR RENGLON 1**/
	var cont1 = $("input#cont1").val();
	 
	if (cont1 == "")
	{
		alerI();
	}
    /////////////////////////////////////
	var cont2 = $("input#cont2").val();
	  
	if (cont2 == "") 
	{
		alerI();
	}
    /////////////////////////////////////////
	  var cont3 = $("input#cont3").val();
	  
	  if (cont3 == "") 
	  {   
	  	 alerI();
      }
    //////////////////////////////////
     var cont4 = $("input#cont4").val();
	 
	  if (cont4 == "") 
	  {   
	  	 alerI();
      }
    ////////////////////////////////
      var cont5 = $("input#cont5").val();
	  
	  if (cont5 == "") 
	  {   
	  	 alerI();
      }
    //////////////////////////////////////////
    /** VALIDAR RENGLON 2**/
      var cont6 = $("input#cont6").val();
	  
	  if (cont6 == "") 
	  {   
	  	 alerI();
      }
     //////////////////////////////////////
      var cont7 = $("input#cont7").val();
	  
	  if (cont7 == "") 
	  {	  
	  	 alerI();
      }
      /////////////////////////////////////
      var cont8 = $("input#cont8").val();
	
	  if (cont8 == "") 
	  {   
	  	 alerI();
      }
      ///////////////////////////////////
      var cont9 = $("input#cont9").val();
	 
	  if (cont9 == "") 
	  {   
	  	 alerI();
      }
     ////////////////////////////////////////
     var cont10 = $("input#cont10").val();
	 
	  if (cont10 == "") 
	  {   
	  	 alerI();
      }
     ////////////////////////////////////////
    /** VALIDAR RENGLON 3**/
   	  var cont11 = $("input#cont11").val();
	 
	  if (cont11 == "") 
	  {   
	  	 alerI();
      }
	//////////////////////////////////////////
	   var cont12 = $("input#cont12").val();
	 
	  if (cont12 == "") 
	  {   
	  	 alerI();
      }
     /////////////////////////////////////////////
      var cont13 = $("input#cont13").val();
	 
	  if (cont13 == "") 
	  {   
	  	 alerI();
      }
     /////////////////////////////////////////////
      var cont14 = $("input#cont14").val();
	 
	  if (cont14 == "") 
	  {   
	  	 alerI();
      }
     /////////////////////////////////////////////
     var cont15 = $("input#cont15").val();
	 
	  if (cont15 == "") 
	  {   
	  	 alerI();
      }
     /////////////////////////////////////////////
      /*VALIDAR RENGLON 4*/
     var cont16 = $("input#cont16").val();
	 
	  if (cont16 == "") 
	  {   
	  	 alerI();
      }
    /////////////////////////////////////////////
     var cont17 = $("input#cont17").val();
	
	  if (cont17 == "") 
	  {   
	  	 alerI();
      }
    /////////////////////////////////////////////
     var cont18 = $("input#cont18").val();
	 
	  if (cont18 == "") 
	  {   
	  	 alerI();
      }
    /////////////////////////////////////////////
      var cont19 = $("input#cont19").val();
	
	  if (cont19 == "") 
	  {   
	  	 alerI();
      }
    ////////////////////////////////////////////
      var cont20 = $("input#cont20").val();
	
	  if (cont20 == "") 
	  {   
	  	 alerI();
      }
    ////////////////////////////////////////////
      /*VALIDAR RENGLON 5*/
      var cont21 = $("input#cont21").val();
	
	  if (cont21 == "") 
	  {   
	  	 alerI();
      }
    ////////////////////////////////////////////
      /*VALIDAR RENGLON 5*/
      var cont22 = $("input#cont22").val();
	
	  if (cont22 == "") 
	  {   
	  	 alerI();
      }
    ////////////////////////////////////////////
      var cont23 = $("input#cont23").val();
	
	  if (cont23 == "") 
	  {   
	  	 alerI();
      }
    ////////////////////////////////////////////
      var cont24 = $("input#cont24").val();
	
	  if (cont24 == "") 
	  {   
	  	 alerI();
      }
    ////////////////////////////////////////////
      var cont25 = $("input#cont25").val();
	
	  if (cont25 == "") 
	  {   
	  	 alerI();
      }
    ////////////////////////////////////////////
      var cont26 = $("input#cont26").val();
	
	  if (cont26 == "") 
	  {   
	  	 alerI();
      }
    ////////////////////////////////////////////
      var cont27 = $("input#cont27").val();
	
	  if (cont27 == "") 
	  {   
	  	 alerI();
      }
    ////////////////////////////////////////////
     var cont28 = $("input#cont28").val();
	 
	  if (cont28 == "") 
	  {   
	  	 alerI();
      }
    	
    ////////////////////////////////////////////
      var cont29 = $("input#cont29").val();
	
	  if (cont29 == "") 
	  {   
	  	 alerI();
      }
    ////////////////////////////////////////////
      var cont30 = $("input#cont30").val();
	
	  if (cont30 == "") 
	  {   
	  	 alerI();
      }
/////////////////////////////////////////////////////////
    $("#tarea").show("slow");
    $("#validar").show("slow");
    $( "#tarea" ).click(function(){$( "#dialog2" ).dialog( "open" );});
    $( "#validar" ).click(function()
    {
    	$("#cont1").attr("disabled","disabled");
    	var $puntos =0;
    	/** RENGLON 1**/
    	if (cont1 == "tiene una")
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	
    	if (cont2 == "constante")
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	
    	if (cont3 == '"carlos"' || cont3 == '"Carlos"')/////////////////////////////////////////////////////////////
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	
    	if (cont4 == "tipo")
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	
    	if (cont5 == "cadena")
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	/** RENGLON 2**/
    	if (cont6 == "tiene una")
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	
    	if (cont7 == "constante")
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	
    	if (cont8 == "12345")
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	
    	if (cont9 == "tipo")
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	
    	if (cont10 == "entero")
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	/** RENGLON 3**/
    	if (cont11 == "tiene una")
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	
    	if (cont12 == "constante")
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	
    	if (cont13 == '"sistemas"' || cont13 == '"Sistemas"')///////////////////////////////////
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	
    	if (cont14 == "tipo")
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	
    	if (cont15 == "cadena")
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	/** RENGLON 4**/
    	if (cont16 == "tiene una")
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	if (cont17 == "variable")
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	if (cont18 == "1")
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	if (cont19 == "tipo")
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	if (cont20 == "entero")
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	/** RENGLON 5**/
    	if (cont21 == "tiene una")
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	if (cont22 == "constante")
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	if (cont23 == "'b'" || cont23 == "'B'")/////////////////////////////
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	if (cont24 == "tipo")
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	if (cont25 == "caracter")
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	/** RENGLON 6**/
    	if (cont26 == "tiene una")
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	if (cont27 == "variable")
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	if (cont28 == "18")
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	if (cont29 == "tipo")
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	if (cont30 == "entero")
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	alert("PUNTOS: "+ $puntos);
    });
		var dataString = 'cont1='+ cont1 + 'cont2=' + cont2 + 'cont3=' + cont3;
		//alert (dataString);return false;
		
		$.ajax({
      type: "POST",
      url: "bin/process.php",
      data: dataString,
      success: function() {
        $('#contact_form').html("<div id='message'></div>");
        $('#message').html("<h2>Contact Form Submitted!</h2>")
        .append("<p>We will be in touch soon.</p>")
        .hide()
        .fadeIn(1500, function() {
          $('#message').append("<img id='checkmark' src='images/check.png' />");
        });
      }
     });
    return false;
	});
});
runOnLoad(function(){
  $("input#name").select().focus();
});
