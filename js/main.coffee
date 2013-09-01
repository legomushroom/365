require.config
	paths:
		jquery: 		'lib/jquery-2.0.1'
		backbone: 		'lib/backbone'
		underscore: 	'lib/lodash.underscore'
		marionette:		'lib/backbone.marionette'
		babysitter:		'lib/backbone.babysitter'
		wreq:			'lib/backbone.wreqr'
		socketio:		'lib/socket.io'
		backboneiosync:	'lib/backbone.iosync'
		backboneiobind:	'lib/backbone.iobind'

	shim:
		backbone:
			exports: 'Backbone'
			deps: 	['jquery','underscore']

		backboneiosync:
			deps: ['backbone', 'socketio']

		backboneiobind:
			deps: ['backboneiosync']

		marionette: 
			exports: 'Backbone.Marionette'
			deps: 	['backboneiobind']

require ['marionette', 'router', 'backbone', 'socketio' ], (M, Router, B, io)->
	GiftShop = new M.Application()
	window.GiftShop = GiftShop
	GiftShop.addRegions
		header: '#header-l'
		main: 	'#main-l'
		footer: '#footer-l'

	GiftShop.start()
	
	GiftShop.router = new Router
	Backbone.history.start pushState: true

	window.socket = io.connect('http://localhost')


	$('#js-a').on 'click', ->
		class Model extends B.Model
			urlRoot: 'post'
		class Collection extends B.Collection
		@collection = new Collection
		@collection.url = 'posts'
		@collection.fetch()
		console.log 'fetch'
