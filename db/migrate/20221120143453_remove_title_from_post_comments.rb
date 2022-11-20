class RemoveTitleFromPostComments < ActiveRecord::Migration[6.1]
  def change
    remove_column :post_comments, :title, :string, null: false
  end
end
