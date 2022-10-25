class CreateArrangeIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :arrange_ingredients do |t|
      t.integer :arrange_recipe_id, null: false
      t.string :name
      t.string :amount

      t.timestamps
    end
  end
end
