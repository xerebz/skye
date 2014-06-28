$('.avatars.new, .avatars.edit').ready ->

  #Body parts will be drawn in this order
  sex = 'Male'
  skin = 'A'
  bodyParts = ['Arm_Front','Hand_Front','Torso','Arm_Back','Hand_Back','Feet','Legs','Head']

  #Stage where the avatar pieces will be laid together
  stage = new Kinetic.Stage
    container: 'avatar-canvas'
    width: 625
    height: 680

  layer = new Kinetic.Layer
  bg = new Kinetic.Layer
  clothes = new Kinetic.Layer

  stage.add bg
  stage.add layer
  stage.add clothes

  bgimg = new Image
  bgimg.onload = ->
    bitmap = new Kinetic.Image
      image: bgimg
    bg.add bitmap
    bg.draw()
  bgimg.src = "/assets/HomecomingTrail-Background.png"

  arts = {}

  for part in bodyParts
    art = new Image
    art.onload = ->
      piece = new Kinetic.Image
        image: this
      layer.add piece
      layer.draw()
    art.src = "/assets/"+sex+skin+'_'+part+".png"
    arts[part] = art

  $ ->
    $("#skin-menu a").first().addClass('selected')

    $("#skin-menu a").click ->
      $("#skin-menu a").removeClass('selected')
      $(this).addClass('selected')
      skin = @id
      for part in bodyParts
        arts[part].src = "/assets/"+sex+skin+'_'+part+".png"
        arts[part].onload = ->
          layer.draw()

    $("#sex-menu a").first().addClass('selected')

    $("#sex-menu a").click ->
      $("#sex-menu a").removeClass('selected')
      $(this).addClass('selected')
      sex = @id
      for part in bodyParts
        arts[part].src = "/assets/"+sex+skin+'_'+part+".png"
        arts[part].onload = ->
          layer.draw()

$('.avatars.edit').ready ->

  $ ->

    $("#item-menu img").click ->
      imageObj = new Image
      wearable = new Kinetic.Image
        image: imageObj
      imageObj.src = @src
      clothes.add(wearable)
      clothes.draw()

    $('#item-menu').bind 'contentchanged', ->
      $("#item-menu img").click ->
        imageObj = new Image
        wearable = new Kinetic.Image
          image: imageObj
        imageObj.src = @src
        clothes.add(wearable)
        clothes.draw()

    $("#clear-clothes").click ->
      clothes.destroyChildren()
      clothes.draw()