require 'httparty'
require 'pp'

class Recipe
	
	include HTTParty
	base_uri  'http://food2fork.com/api'
	format :json
	default_params key: ENV['FOOD2FORK_KEY']

	def self.for search_term
		response = get("/search", query: { q: search_term})
		return response['recipes']

	end

end

 pp Recipe.for 'Chocolate'

