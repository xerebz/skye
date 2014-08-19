Skye.AvatarRoute = Ember.Route.extend({
  setupController: function(controller, avatar) {
    controller.set('model', avatar);
  }
});