class CreateMealsDayBlocks < ActiveRecord::Migration[6.0]
  def change
    create_table :day_blocks_meals, id: false do |t|
      t.belongs_to :meal
      t.belongs_to :day_block
    end
  end
end
