class FixKitchenIdFromStringToInteger < ActiveRecord::Migration
  def change
  	remove_column :recipes, :kitchen_id
  	add_column :recipes, :kitchen_id, :integer
  end

end
