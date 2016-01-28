class RenamingTables < ActiveRecord::Migration
  def change
    rename_table :ingredientrecipes, :ingredient_recipes

    change_table :ingredients do |t|
      t.rename :iname, :ingredient_name
    end

  end
end
