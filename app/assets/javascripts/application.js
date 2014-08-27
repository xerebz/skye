// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require jquery
//= require handlebars
//= require ember
//= require ember-data
//= require_self
//= require loader
//= require ./skye
//= require ember-devise-simple-auth/globals

// for more details see: http://emberjs.com/guides/application/

Skye = Ember.Application.create({
	rootElement: "#main",
	 deviseEmberAuth: {
    signInPath: "/sign-in", // the URL users will see in the browser for the sign in page
    userModelType: "user", // **ember-data only** name of the model that represents your user; same thing you'd pass to `store.find("...")` in a route
    deviseSignInPath: "/users/sign_in", // the URL to POST to for creating a session
    deviseSignOutPath: "/users/sign_out", // the URL to DELETE to for signing out
    currentSessionPath: "/sessions/current" // the URL for getting the current signed-in state; this is currently added by the gem
  }
});
