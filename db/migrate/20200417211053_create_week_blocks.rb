class CreateWeekBlocks < ActiveRecord::Migration[6.0]
  def change
    create_table :week_blocks do |t|
      t.date :week_start
      t.date :week_end

      t.timestamps
    end
  end
end
