class HomeController < ApplicationController

	def index
	  offset = rand(Recipe.count).to_i
	  @recipes = Recipe.find(:all, :limit => 3, :order => offset)
	end

end
