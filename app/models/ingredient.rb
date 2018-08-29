class Ingredient < ActiveRecord::Base
  has_many :recipe_ingredients
  has_any :recipes, thorugh: :recipe_ingredients

  validates :name, presence: true 
end
