class RemoveDetailsFromArrangeRecipes < ActiveRecord::Migration[6.1]
  def change
    remove_column :arrange_recipes, :amount, :string
    remove_column :arrange_recipes, :cooking_method, :text
  end
end
