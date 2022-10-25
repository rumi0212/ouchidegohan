class CreateArrangeProcedures < ActiveRecord::Migration[6.1]
  def change
    create_table :arrange_procedures do |t|
      t.integer :arrange_recipe_id
      t.text :body

      t.timestamps
    end
  end
end
