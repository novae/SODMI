$(document).ready ->
  objectItemList = new Array()
  BdItemList = new Array()

  $(".logo").jqFloat
    width:1,
    height:30,
    speed:1000,
    minHeight:280
    
  
  $('#tag1').tagsInput {
    'height':'200px'
    'width':'500px'
    'defaultText':'Sentencia'
  }
  
  $("#draggable").draggable()  

  #### constructor para objetos de bd y ul ####
  class itemList
    keyList = [] 
    valuesList = []
    ban1 = false
    ban2 = false
    
    constructor: (@id,@sentencia) ->
    
    updateList: ->
      objectItemList = []
      $("#sortable li").each (index) ->
        objectItemList[index]=new itemList(parseInt($(this).attr("id")),$(this).text())
    
    BDList: ->
      BdItemList = []
      length = gon.id.length
      i = 0
      while i < length
        BdItemList[i] = new itemList(gon.id[i],gon.sentencia[i])
        i++
    
    accessorArray:(objectArray) ->
      keyList = []
      valuesList = []
      length = objectArray.length
      i=0
      while i < length
        keyList[i] = objectArray[i].id
        valuesList[i] = objectArray[i].sentencia
        i++

    setId: (id) ->
      @id = id
      
    evaluate:(ban1,ban2) ->
      if(ban2 is true and ban1 is false)
        console.log "paso la prueba"  
      else
        console.log "no paso la prueba"
      
    obj1 = new itemList
    

    $('.ui-state-default').dblclick ->
      currentId = $(this).attr("id")
      $("#" + currentId).remove()
      obj1.updateList()
      obj1.accessorArray(objectItemList)
      

#evaluar entrada del usuario
      
    $("#listo").click ->
      sentencia = document.getElementById('sentencia').value
      obj1.updateList()
      obj1.accessorArray(objectItemList)
      ban1 = _.include valuesList,sentencia
      console.log "UL: ? "+ban1
      obj1.BDList()
      obj1.accessorArray(BdItemList)
      ban2 = _.include valuesList,sentencia
      console.log "BD: ? "+ban2
      #obj1.evaluate(ban1,ban2)
      

  ############## Edit Element ##############  
    contenidoInst='<div class="panel callout radius">'
    contenidoInst+='<h5>INSTRUCCIONES</h5>'
    contenidoInst+='<ul class="listas">'
    contenidoInst+='<li>Escribir una nueva sentencia para completar el codigo, si es necesario.</li>'
    contenidoInst+='<li>Arrastrar la nueva sentencia a la lista de la izquierda.</li>'
    contenidoInst+='<li>Arrastrar la nueva sentencia a la lista de la izquierda.</li>'
    contenidoInst+='<li>Ordenar la lista de elementos de forma correcta para que el bloque de codigo funcione.</li>'
    contenidoInst+='</ul>'
    contenidoInst+='</div>'
  
    DebugEjer1='<div class="panel callout radius">'
    DebugEjer1+='<p>'
    DebugEjer1+='DEBUG EJER 1.1'
    DebugEjer1+='</p>'
    DebugEjer1+='</div>'
  
    modal1='<ul class="ch-grid">'
    modal1+='<li>'
    modal1+='<div class="ch-item ch-img-1"> '
    modal1+='<div class="ch-info-wrap">'
    modal1+='<div class="ch-info">'
    modal1+='<div class="ch-info-front ch-img-1"></div>'
    modal1+='<div class="ch-info-back">'
    modal1+='<h3>Terminaste!</h3>'  
    modal1+='<p>Ejercicio No 1</p>'           
    modal1+='</div>'      
    modal1+='</div>'        
    modal1+='</div>'          
    modal1+='</div>'            
    modal1+='</li>'              
    modal1+='</ul>'
  
    $("#link-instrucciones").click ->
      $("#contenidos").html contenidoInst
      $("#myModal").reveal ->
            animation: "fadeAndPop" #fade, fadeAndPop, none
            animationspeed: 100 #how fast animations are
            closeOnBackgroundClick: true #if you click background will modal close?
            dismissModalClass: "close-reveal-modal" #the class of a button or element that          
    $("#link-ejer1").click ->
      $("#contenidos").html DebugEjer1
      $("#myModal").reveal ->
            animation: "fadeAndPop" #fade, fadeAndPop, none
            animationspeed: 100 #how fast animations are
            closeOnBackgroundClick: true #if you click background will modal close?
            dismissModalClass: "close-reveal-modal" #the class of a button or element that
      
  
  ############## Eventos de Lista ##############
   
  
    $("#sortable").sortable
      axis:'y',
      placeholder: 'ui-state-highlight',
      containment:'ul',
      items:'li',
      cursor: 'move',
      update: ->
        obj2 = new itemList
        obj3 = new itemList
        obj2.updateList()
        obj2.accessorArray(objectItemList)
        obj3.BDList()
        obj3.accessorArray(BdItemList)
    ############   View Modal  ###########
        if _.isEqual(obj2.keyList,obj3.BdItemList)
          $("#contenidos").html modal1
          $("#myModal").reveal ->
            animation: "fadeAndPop" #fade, fadeAndPop, none
            animationspeed: 100 #how fast animations are
            closeOnBackgroundClick: true #if you click background will modal close?
            dismissModalClass: "close-reveal-modal" #the class of a button or element that
            
        else
        
        ############ view Info ############
      
    $("#sortable").disableSelection() 
  

    