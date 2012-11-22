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
/////////////////////////////////////////////////////////
    $("#tarea").show("slow");
    $("#validar").show("slow");
    $( "#tarea" ).click(function(){$( "#dialog2" ).dialog( "open" );});
    $( "#validar" ).click(function()
    {
    	$("#cont1").attr("disabled","disabled");
    	var $puntos =0;
    	/** RENGLON 1**/
    	if (cont1 == "clase")
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	
    	if (cont2 == "publica")
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	
    	if (cont3 == "metodo principal()")/////////////////////////////////////////////////////////////
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	
    	if (cont4 == "variable")
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	
    	if (cont5 == "tipo")
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	/** RENGLON 2**/
    	if (cont6 == "variable")
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	
    	if (cont7 == "tipo")
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	
    	if (cont8 == "variable")
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	
    	if (cont9 == "tipo")
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	
    	if (cont10 == "lee(x)" || cont10 == "lee(y)" )
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	/** RENGLON 3**/
    	if (cont11 == "lee(y)" || cont11 == "lee(x)")
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	
    	if (cont12 == "termina_metodo")
    	{
    		//alert("correcto");
    		$puntos=$puntos+1;
    	}
    	
    	if (cont13 == "termina_clase")///////////////////////////////////
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
