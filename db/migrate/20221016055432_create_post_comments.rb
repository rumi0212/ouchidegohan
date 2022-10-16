class CreatePostComments < ActiveRecord::Migration[6.1]
  def change
    create_table :post_comments do |t|
      t.integer :recipes_id, null: false
      t.integer :customer_id, null: false
      t.string :title, null: false
      t.text :comment, null: false

      t.timestamps
    end
  end
end
