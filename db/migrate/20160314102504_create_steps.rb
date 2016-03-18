class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.integer :recipe_id
      t.integer :number
      t.text :instruction

      t.timestamps null: false
    end
  end
end
