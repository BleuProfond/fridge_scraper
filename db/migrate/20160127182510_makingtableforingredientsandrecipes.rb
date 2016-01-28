class Makingtableforingredientsandrecipes < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :ingredient
    end

    create_table :recipes do |t|
      t.string :rname
    end

    create_table :ingredientrecipe do |t|
      t.integer :ingredient_id
      t.integer :recipe_id
    end
  end
end
