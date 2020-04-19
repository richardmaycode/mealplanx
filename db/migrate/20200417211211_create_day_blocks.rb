class CreateDayBlocks < ActiveRecord::Migration[6.0]
  def change
    create_table :day_blocks do |t|
      t.date :scheduled
      t.string :day
      t.belongs_to :week_block, null: false, foreign_key: true

      t.timestamps
    end
  end
end
