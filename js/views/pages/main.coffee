define 'views/pages/main', ['views/pages/PageView', 'backbone'], (PageView, B)->
	class Main extends PageView
		template: '#main-template'

		render:->
			super

			class Collection extends B.Collection
				backend: 'mybackend'

			@collection = new Collection

			@collection.url = "/products"
			@collection.fetch()

	Main