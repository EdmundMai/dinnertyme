class AddKitchenIdToRecipes < ActiveRecord::Migration
  def change
  	add_column :recipes, :kitchen_id, :string
  end
end
