define 'views/pages/main', ['views/pages/PageView'], (PageView)->
	class Main extends PageView
		template: '#main-template'

		render:->
			super

	Main