class Recipe < ActiveRecord::Base
  attr_accessible :name, :photo, :rating, :serves, :steps, :ingredient_ids, :remote_photo_url, :kitchen_id

  has_and_belongs_to_many :ingredients
  belongs_to :kitchen

  mount_uploader :photo, RecipepicUploader


  def self.search(search)
    where('name ILIKE ?', "%#{search}%")
  end

end