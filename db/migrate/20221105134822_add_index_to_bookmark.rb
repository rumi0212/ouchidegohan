class AddIndexToBookmark < ActiveRecord::Migration[6.1]
  def change
    add_index :bookmarks, [:customer_id, :recipe_id], unique: :true
  end
end
