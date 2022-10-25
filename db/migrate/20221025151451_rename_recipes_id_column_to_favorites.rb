class RenameRecipesIdColumnToFavorites < ActiveRecord::Migration[6.1]
  def change
    rename_column :favorites, :recipes_id, :recipe_id
  end
end
