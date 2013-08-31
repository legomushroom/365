define 'router', ['backbone','controllers/pagesController'], (B, pc)->
	class Router extends B.Router
		routes:
			'': 			'main'
			'about': 		'about'
			'about/': 		'about'

		main:->
			@startPage pc.main

		about:->
			@startPage pc.about

		startPage:(View)->
			window.GiftShop.main.show(new View)

	Router