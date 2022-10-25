class RenameRecipesIdColumnToPostComments < ActiveRecord::Migration[6.1]
  def change
    rename_column :post_comments, :recipes_id, :recipe_id
  end
end
