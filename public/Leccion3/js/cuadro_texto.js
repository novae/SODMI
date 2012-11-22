/** EFECTOS DE BANNER **/
$(document).ready(function(){
			
		$('#nubes').pan({fps: 30, speed: 1, dir: 'right'}); 	
		$('#pasto1').pan({fps: 30, speed: 1, dir: 'right'}); 
		$('#pasto2').pan({fps: 30, speed: 2, dir: 'right'}); 
		$('#arbol1').pan({fps: 30, speed: 2, dir: 'right'}); 
		$('#arbol2').pan({fps: 30, speed: 2, dir: 'right'}); 
		var stage_left = (($('body').width() - 866) / 2);
		var stage_top = 30;
				
		$('#avion').sprite({fps: 8, no_of_frames: 14}).spRandom({
		
						top: 40,
						left: stage_left + 20,
						right: 400,
						bottom: -50,
						speed: 3500,
						pause: 1000
		});
	});
	
/** EFECTO DE ATRAER EL AVION AL HACER CLIC EN LA PANTALLA **/
	
$(document).ready(function(){
	$('#avion').sprite({fps: 8, no_of_frames: 14})
                    .isDraggable()
                    .activeOnClick()
                    .active();
   $('html').flyToTap();
    
});

/** EFECTOS DEL CUADRO DE TEXTO **/
$(document).ready(function(){  
		$('a.link').click(function (){ 
			
			$('#wrapper').scrollTo($(this).attr('href'), 800);
			setPosition($(this).attr('href'), '#cloud1', '0px', '400px', '800px', '1200px')
			setPosition($(this).attr('href'), '#cloud2', '0px', '800px', '1600px', '2400px')
			$('a.link').removeClass('selected');  
			$(this).addClass('selected');
			$('audio')[0].play();
			return false;  
		});  
	});
	
	function setPosition(check, div, p1, p2, p3, p4){
	if(check==='#box1')
		{
			$(div).scrollTo(p1, 800);
		}
	else if(check==='#box2')
		{
			$(div).scrollTo(p2, 800);
		}
	else if(check==='#box3')
		{
			$(div).scrollTo(p3, 800);
		}
	else
		{
			$(div).scrollTo(p4, 800);
		}
	};
	
/** EVENTOS DE SONIDO **/
$(document).ready(function(){  
		
  		    $('.link').mouseover(function(){
  				$('audio')[1].play();
  			
  		   });	
	    });