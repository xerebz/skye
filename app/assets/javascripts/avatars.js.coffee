$('.avatars.new, .avatars.edit').ready ->

  #Body parts will be drawn in this order

  gender = if gon.avatar.gender then gon.avatar.gender else "Male"
  skin = if gon.avatar.skin_tone then gon.avatar.skin_tone else "A"
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

  redraw = ->
    for part in bodyParts
      art = new Image
      art.onload = ->
        piece = new Kinetic.Image
          image: this
        layer.add piece
        layer.draw()
      art.src = "/assets/"+gender+skin+'_'+part+".png"
      arts[part] = art
    
  $ ->

    $("input[name='avatar[gender]']").click ->
      gender = $(this).val()
      for part in bodyParts
        arts[part].src = "/assets/"+gender+skin+'_'+part+".png"
        arts[part].onload = ->
          layer.draw()

    $("input[name='avatar[skin_tone]']").click ->
      skin = $(this).val()
      for part in bodyParts
        arts[part].src = "/assets/"+gender+skin+'_'+part+".png"
        arts[part].onload = ->
          layer.draw()

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
        imageObj.onload = ->
          clothes.add(wearable)
          clothes.draw()
        imageObj.src = @src


    $("#clear-clothes").click ->
      clothes.destroyChildren()
      clothes.draw()

    redraw()