class HomeController < ApplicationController

	def index
	  @recipes = Recipe.find(:all, :limit => 3, :order => rand(Recipe.count))
	end

end
