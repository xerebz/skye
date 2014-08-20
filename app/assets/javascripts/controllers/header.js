Skye.HeaderController = Ember.ArrayController.extend({
  content: Ember.A([
    Ember.Object.create({title: "Avatar", location: 'avatar', active: null}),
    Ember.Object.create({title: "Market", location: 'market', active: null}),
    Ember.Object.create({title: "Play", location: 'play', active: null}),
    Ember.Object.create({title: "Donate", location: 'donate', active: null}),
    Ember.Object.create({title: "Item Archive", location: 'items', active: null}),    
  ]),
  title: "Skye: Endless Realm"
});