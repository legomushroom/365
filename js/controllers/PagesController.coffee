define 'controllers/pagesController', [
	'views/pages/main',
	'views/pages/about',
	], (main, about)->
		class Controller 
			constructor:->
				@main 	= main
				@about 	= about

		new Controller
