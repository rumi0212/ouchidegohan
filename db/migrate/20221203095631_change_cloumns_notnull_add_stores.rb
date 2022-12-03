class ChangeCloumnsNotnullAddStores < ActiveRecord::Migration[6.1]
  def change
    change_column_null :stores, :category_id, false
  end
end
