require.config
	paths:
		jquery: 		'lib/jquery-2.0.1'
		backbone: 		'lib/backbone'
		underscore: 	'lib/lodash.underscore'
		marionette:		'lib/backbone.marionette'
		babysitter:		'lib/backbone.babysitter'
		wreq:			'lib/backbone.wreqr'
		backboneio:		'lib/backboneio'
		socketio:		'lib/socket.io'

	shim:
		backbone :
			exports : 'Backbone'
			deps : ['jquery','underscore']
		
		backboneio:	
			deps : ['backbone','socketio']

		marionette : 
			exports : 'Backbone.Marionette'
			deps : ['backboneio']

require ['marionette', 'router'], (M, Router)->
	GiftShop = new M.Application()
	window.GiftShop = GiftShop
	GiftShop.addRegions
		header: '#header-l'
		main: 	'#main-l'
		footer: '#footer-l'

	GiftShop.start()
	
	GiftShop.router = new Router
	Backbone.history.start pushState: true



	$('#js-a').on 'click', ->
			window.GiftShop.router.navigate('/about', {trigger: true})
