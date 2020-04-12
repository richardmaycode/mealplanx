class CreateMeal < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.string :name
      t.string :base
      t.integer :meal_time
      t.string :meal_type
      t.integer :leftovers
      t.boolean :baby_friendly, default: false
      t.date :last_used
      t.integer :cooking_length
      
      t.timestamps
    end
  end
end
