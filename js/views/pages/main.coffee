define 'views/pages/main', ['views/pages/PageView', 'backbone'], (PageView, B)->
	class Main extends PageView
		template: '#main-template'

		render:->
			super

			class Model extends B.Model
				backend: 'Users'

			class Collection extends B.Collection
				model: Model
				backend: 'Users'
				

			@collection = new Collection
			@collection.url = 'Users'
			@collection.fetch()


	Main