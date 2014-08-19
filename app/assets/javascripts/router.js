// For more information see: http://emberjs.com/guides/routing/

Skye.Router.map(function() {
	this.route("avatar");
});

Skye.Router.reopen({
  location: 'history'
});
