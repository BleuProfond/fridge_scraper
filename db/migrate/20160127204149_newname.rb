class Newname < ActiveRecord::Migration
  def change
    change_table :recipes do |t|
      t.rename :rname, :recipe_name
    end
  end
end
