class CreatePlanPrefs < ActiveRecord::Migration[6.0]
  def change
    create_table :plan_prefs do |t|
      t.boolean :is_active
      t.integer :cooking_length
      
      t.belongs_to :meal, null: false, foreign_key: true
      t.belongs_to :day_block_pref, null: false, foreign_key: true

      t.timestamps
    end
  end
end
