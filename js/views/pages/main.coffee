define 'views/pages/main', ['views/pages/PageView', 'backbone'], (PageView, B)->
	class Main extends PageView
		template: '#main-template'

		render:->
			super

			class Model extends B.Model

			@model = new Model
			
			@model.set 
					name: 'Lego'

			@model.url = '/api/'
			@model.save()

	Main