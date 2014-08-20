Skye.HeaderController = Ember.ArrayController.extend({
  content: Ember.A([
    Ember.Object.create({title: "Avatar", location: 'avatar', active: null}),
    Ember.Object.create({title: "Market", location: 'market', active: null})
  ]),
  title: "Skye"
});