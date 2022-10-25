class RenameIngredientColumnToArrangeRecipes < ActiveRecord::Migration[6.1]
  def change
    rename_column :arrange_recipes, :ingredient, :serving
  end
end
