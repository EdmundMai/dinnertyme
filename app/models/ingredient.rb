class Ingredient < ActiveRecord::Base
  attr_accessible :name, :unit, :amount

  has_and_belongs_to_many :recipes

end
