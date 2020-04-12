class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      #fields
      t.string :name
      t.string :base
      t.integer :meal
      t.integer :cooking_length
      t.integer :leftovers
      t.boolean :baby_friendly
      t.boolean :is_favorite
      t.date :last_used
      
      #relationships
      t.belongs_to :cuisine
      #tracking
      t.timestamps
    end
  end
end
