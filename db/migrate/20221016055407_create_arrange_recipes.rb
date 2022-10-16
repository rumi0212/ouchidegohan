class CreateArrangeRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :arrange_recipes do |t|
      t.integer :customer_id, null: false
      t.string :title, null: false
      t.string :ingredient, null: false
      t.string :amount, null: false
      t.text :cooking_method, null: false
      t.text :comment, null: false
      t.boolean :status, default: true

      t.timestamps
    end
  end
end
