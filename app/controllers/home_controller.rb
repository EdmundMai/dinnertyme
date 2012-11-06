class HomeController < ApplicationController

	def index
	  offset = rand(Recipe.count)
	  @recipes = Recipe.find(:all, :limit => 3, :order => offset)
	end

end
