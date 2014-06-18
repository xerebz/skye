$('.avatars.new').ready ->
  alert "hey"
  imageObj = new Image
  imageObj.src = 'http://www.html5canvastutorials.com/demos/assets/darth-vader.jpg'
  $("#header").text "Hey!"
  stage = new Kinetic.Stage
    container: 'container'
    width: 625
    height: 680
  layer = new Kinetic.Layer
  darth = new Kinetic.Image
    x: 10
    y: 10
    image: imageObj
  layer.add darth
  stage.add layer
  darth.cache
  layer.draw
  return
