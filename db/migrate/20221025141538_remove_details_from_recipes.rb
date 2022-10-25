class RemoveDetailsFromRecipes < ActiveRecord::Migration[6.1]
  def change
    remove_column :recipes, :amount, :string
    remove_column :recipes, :cooking_method, :text
  end
end
