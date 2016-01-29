class Ingredient < ActiveRecord::Base

  has_and_belongs_to_many :recipes
  validates :ingredient_name, uniqueness: true

end