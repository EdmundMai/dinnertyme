module ApplicationHelper

  def full_ingredient_name(ingredient)
  	"#{ingredient.amount} #{ingredient.unit} of #{ingredient.name}"
  end

end
