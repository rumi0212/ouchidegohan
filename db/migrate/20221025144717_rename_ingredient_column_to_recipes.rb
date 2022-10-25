class RenameIngredientColumnToRecipes < ActiveRecord::Migration[6.1]
  def change
    rename_column :recipes, :ingredient, :serving
  end
end
