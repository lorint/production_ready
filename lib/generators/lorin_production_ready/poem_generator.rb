require 'rails/generators'
class PoemGenerator < Rails::Generators::Base
	desc "Read poetry, dude!"

	def self.source_root
		@source_root ||= File.join(File.dirname(__FILE__), 'templates')
	end

	def poem
		template "poetry/raven.txt"
		template "app/assets/javascripts/whatever.js"
	end
	def poem2
		template "poetry/raven.txt"
		template "app/assets/javascripts/whatever.js"
	end
end
