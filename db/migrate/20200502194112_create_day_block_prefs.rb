class CreateDayBlockPrefs < ActiveRecord::Migration[6.0]
  def change
    create_table :day_block_prefs do |t|
      t.string :day
      t.integer :meals_to_plan
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
