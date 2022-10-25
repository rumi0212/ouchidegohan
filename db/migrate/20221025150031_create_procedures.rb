class CreateProcedures < ActiveRecord::Migration[6.1]
  def change
    create_table :procedures do |t|
      t.integer :recipe_id, null: false
      t.text :body

      t.timestamps
    end
  end
end
