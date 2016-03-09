class AddMealToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :meal, :string
  end
end
