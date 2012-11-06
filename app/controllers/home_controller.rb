class HomeController < ApplicationController

	def index
	  offset = rand(Recipe.count).ceil
	  @recipes = Recipe.find(:all, :limit => 3, :order => offset)
	end

end
