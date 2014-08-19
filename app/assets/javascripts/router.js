// For more information see: http://emberjs.com/guides/routing/

Skye.Router.map(function() {
	this.route("avatar");
	this.route("market");
	this.route("play");
	this.route("donate");
	this.route("try_on");
});

Skye.Router.reopen({
  location: 'history'
});
