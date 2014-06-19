$('.avatars.new').ready ->

  #Body parts will be drawn in this order
  sex = 'Female'
  skin = 'A'
  bodyParts = ['Arm_Front','Hand_Front','Torso','Arm_Back','Hand_Back','Feet','Legs','Head']

  #Stage where the avatar pieces will be laid together
  stage = new Kinetic.Stage
    container: 'container'
    width: 625
    height: 680

  #This method loads a layer with an image and draws it onto the stage
  putOn = (item) ->
    imageObj = new Image
    imageObj.src = "/assets/"+item+".png"
    layer = new Kinetic.Layer
    bitmap = new Kinetic.Image
      image: imageObj
    layer.add bitmap
    stage.add layer
    layer.draw

  redraw = ->
    putOn sex+skin+'_'+bodyPart for bodyPart in bodyParts 

  wear = (element) ->
    skin = element.id
    redraw

  sexChange = (element) ->
    sex = element.id
    redraw

  #draw initial body
  redraw
