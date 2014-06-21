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

  layer = new Kinetic.Layer
  stage.add layer

  arts = {}
  pieces = {}
  for part in bodyParts
    art = new Image
    art.src = "/assets/"+sex+skin+'_'+part+".png"
    arts[part] = art
    piece = new Kinetic.Image
      image: arts[part]
    pieces[part] = piece
    layer.add piece
    layer.draw()

  $ ->
    $("#skin-menu a").click ->
      skin = @id
      for part in bodyParts
        arts[part].src = "/assets/"+sex+skin+'_'+part+".png"
        arts[part].onload = ->
          layer.draw()

    $("#sex-menu a").click ->
      sex = @id
      for part in bodyParts
        arts[part].src = "/assets/"+sex+skin+'_'+part+".png"
        arts[part].onload = ->
          layer.draw()
