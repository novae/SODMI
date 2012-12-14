$(document).ready ->

  $('.evaluar').attr("disabled", true);#Hace que los botones para evaluar esten deshabilitados mientras no se deposite ninguna linea de codigo 
  #Ejercicio 1 Tab 1
  $("#droppable1").droppable
    drop:(event, ui) ->
      $('.success').attr("disabled", false);
      $("<li class='lineas-codigo'></li>").text(ui.draggable.text()).appendTo $("#lista-sortable2")
      ui.draggable.remove()    
  $("#droppable1-1").droppable
    drop:(event, ui) ->
      $("<li class='lineas-codigo'></li>").text(ui.draggable.text()).appendTo $("#lista-sortable1")
      ui.draggable.remove()
  $("#lista-sortable1,#lista-sortable2").sortable().disableSelection()
  #Ejercicio 1 Tab 2
  $("#droppable2").droppable 
    drop:(event, ui) ->
      $('.success').attr("disabled", false);
      $("<li class='lineas-codigo'></li>").text(ui.draggable.text()).appendTo $("#lista-sortable4")
      ui.draggable.remove()
  $("#droppable2-1").droppable
    drop:(event, ui) ->
      $("<li class='lineas-codigo' ></li>").text(ui.draggable.text()).appendTo $("#lista-sortable3")
      ui.draggable.remove()
  $("#lista-sortable3,#lista-sortable4").sortable().disableSelection()
  #Ejercicio 1 Tab 3
  $("#droppable3").droppable 
    drop:(event, ui) ->
      $('.success').attr("disabled", false);
      $("<li class='lineas-codigo'></li>").text(ui.draggable.text()).appendTo $("#lista-sortable6")
      ui.draggable.remove()
  $("#droppable3-1").droppable
    drop:(event, ui) ->
      $("<li class='lineas-codigo'></li>").text(ui.draggable.text()).appendTo $("#lista-sortable5")
      ui.draggable.remove()
  $("#lista-sortable5,#lista-sortable6").sortable().disableSelection()
  #Ejercicio 2 Tab 1
  $("#droppable4").droppable 
    drop:(event, ui) ->
      $('.success').attr("disabled", false);
      $("<li class='lineas-codigo'></li>").text(ui.draggable.text()).appendTo $("#lista-sortable8")
      ui.draggable.remove()
  $("#droppable4-1").droppable
    drop:(event, ui) ->
      $("<li class='lineas-codigo' ></li>").text(ui.draggable.text()).appendTo $("#lista-sortable7")
      ui.draggable.remove()
  $("#lista-sortable7,#lista-sortable8").sortable().disableSelection()
  #Ejercicio 3 Tab 1
  $("#droppable5").droppable 
    drop:(event, ui) ->
      $('.success').attr("disabled", false);
      $("<li class='lineas-codigo'></li>").text(ui.draggable.text()).appendTo $("#lista-sortable10")
      ui.draggable.remove()
  $("#droppable5-1").droppable
    drop:(event, ui) ->
      $("<li class='lineas-codigo' ></li>").text(ui.draggable.text()).appendTo $("#lista-sortable9")
      ui.draggable.remove()
  $("#lista-sortable9,#lista-sortable10").sortable().disableSelection()
 #------------Clase para Evaluar Ejercicio-----------------------------------------------------
  class ejerciciosIterativas
    ban1Iterativas = false
    ban2Iterativas = false
    ListaObjetoIterativas = []
    ListaBdIterativas = []  
    constructor: (@id,@sentencia) ->  
    actualizarLista: (lista) -> 
      ListaObjetoIterativas=[]  
      $(lista).each (index) ->
        ListaObjetoIterativas[index]=new ejerciciosIterativas(parseInt($(this).attr("id")),$(this).text()) 
    actualizarListaBD: (ejercicio)->
      ListaBdIterativas=[] 
      length =  gon.lineas_ejercicios.length
      i = 0
      contador=0
      while i < length
        if(gon.lineas_ejercicios[i].Ejercicio==ejercicio && gon.lineas_ejercicios[i].IdModulo==4)
          ListaBdIterativas[contador] = new ejerciciosIterativas(gon.lineas_ejercicios[i].Orden,gon.lineas_ejercicios[i].Linea)         
          contador+=1
        i++             
    evaluaIterativas: ->
      if(ListaObjetoIterativas.length==ListaBdIterativas.length)
        x=0
        ban=false     
        while x<ListaObjetoIterativas.length
          console.log(ListaObjetoIterativas[x].sentencia)
          console.log(ListaBdIterativas[x].sentencia)
          if(ListaObjetoIterativas[x].sentencia==ListaBdIterativas[x].sentencia)
            ban=true
          else
            ban=false
            break            
          x++
        if(ban == true)
          terminaEjercicio()
        else
          muestraError()                
      else
        muestraError()           
 #----------------------------------------------------------------------------------------------
  obj1 = new ejerciciosIterativas
    
#Evaluar Ejercicios 
  $("#evaluar1").click ->
    obj1.actualizarLista("#lista-sortable2 li")
    obj1.actualizarListaBD(1)
    obj1.evaluaIterativas()
  $("#evaluar2").click -> 
    obj1.actualizarLista("#lista-sortable4 li")
    obj1.actualizarListaBD(2)
    obj1.evaluaIterativas()
  $("#evaluar3").click ->
    obj1.actualizarLista("#lista-sortable6 li")
    obj1.actualizarListaBD(3)
    obj1.evaluaIterativas()
  $("#evaluar4").click ->
    obj1.actualizarLista("#lista-sortable8 li")
    obj1.actualizarListaBD(4)
    obj1.evaluaIterativas()
  $("#evaluar6").click ->
    obj1.actualizarLista("#lista-sortable10 li")
    obj1.actualizarListaBD(5)
    obj1.evaluaIterativas() 
  #Muestra el mensaje de exito cuando se termina un ejercicio satisfactoriamente
  terminaEjercicio = ->
    $("#terminaEjercicio").reveal
      animation: "fadeAndPop"
      animationSpeed: 200
      closeOnBackgroundClick: true 
      dismissModalClass: "close-reveal-modal"
      $(".errorLinea").remove()
      
  muestraError = ->
    $("<div class='alert-box alert errorLinea' >Una o mas lineas del ejercicio estan mal <a href='' class='close'>&times;</a></div>").appendTo $(".display-error")
    $(".errorLinea").css('display','block')

      
 #Evento para mostrar el cuadro de dialogo con las instrucciones    
  $(".instrucciones1").click ->
    $("#modalInstrucciones").reveal
      animation: "fadeAndPop"
      animationSpeed: 200
      closeOnBackgroundClick: true 
      dismissModalClass: "close-reveal-modal"
#Evento del boton de instrucciones para el tipo de ejercicio n°2
  $(".instrucciones2").click ->
    $("#modalInstrucciones2").reveal
      animation: "fadeAndPop"
      animationSpeed: 200
      closeOnBackgroundClick: true 
      dismissModalClass: "close-reveal-modal"
    
  #Evento para mostrar el cuadro de dialogo que contiene los problemas 
  $(".problema").click ->
    currentId = $(this).attr("id")
    numero_ejercicio=currentId.split("-")
    $("#problema #contenido-problema").text(gon.problema[numero_ejercicio[1]-1])
    $("#problema").reveal
      animation: "fadeAndPop"
      animationSpeed: 200
      closeOnBackgroundClick: true 
      dismissModalClass: "close-reveal-modal" 