class Fixingname < ActiveRecord::Migration
  def change
    rename_table :ingredientrecipe, :ingredientrecipes
  end
end
