class Ingredientrecipetablenamefix < ActiveRecord::Migration
  def change
    rename_table :ingredient_recipes, :ingredients_recipes
  end
end
