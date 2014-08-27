Skye.AvatarRoute = Ember.Route.extend({
  model: function(params) {
    return this.store.find('avatar',123);
  }
});