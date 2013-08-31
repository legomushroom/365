define 'views/pages/about', ['views/pages/PageView'], (PageView)->
	class About extends PageView
		template: '#about-template'

		render:->
			super

	About