class AddCategoryIdToStores < ActiveRecord::Migration[6.1]
  def change
    add_column :stores, :category_id, :integer
  end
end
