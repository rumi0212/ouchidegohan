class AddRecipeIdToArrangeRecipe < ActiveRecord::Migration[6.1]
  def change
    add_column :arrange_recipes, :recipe_id, :integer
  end
end
