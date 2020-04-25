class CreateUsedRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :used_recipes do |t|
      t.date :date_used
      t.belongs_to :recipe, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
