Skye.CanvasThingComponent = Ember.Component.extend({
  tagName: 'canvas',
  attributeBindings: ['width', 'height'],
  width: 625,
  height: 680,
  didInsertElement: function() {
    this.set('ctx', this.get('element').getContext('2d'));
    this._clear();
    this.draw();
  },
  
  draw: function() {
    this._clear();
    var ctx = this.get('ctx');
    ctx.strokeStyle = '#DE28B3';
    console.log(this.get('data'));
    ctx.strokeText(this.get('data'), this.get('width')/4, this.get('height')/2);
    this._star(40, 40);
    this._star(300, 300);
    this._star(123, 250);
    this._star(320, 90);
  }.observes('data'),
  
  _clear: function() {
    var ctx = this.get('ctx');
    ctx.fillStyle = '#fff';
    ctx.fillRect(0, 0, this.get('width'), this.get('height'));
  },

  _star: function(x, y) {
    var radius = 20;
    var points = 5;
    var inset = 0.5;
    var ctx = this.get('ctx');
  
    ctx.save();
    ctx.beginPath();
    ctx.fillStyle = '#FAFF66';
    ctx.translate(x, y);
    ctx.moveTo(0,0-radius);
    for (var i = 0; i < points; i++) {
      ctx.rotate(Math.PI / points);
      ctx.lineTo(0, 0 - (radius*inset));
      ctx.rotate(Math.PI / points);
      ctx.lineTo(0, 0 - radius);
    }
    ctx.fill();
    ctx.restore();
  }
});