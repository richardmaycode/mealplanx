class CreateInstructions < ActiveRecord::Migration[6.0]
  def change
    create_table :instructions do |t|
      t.string :detail
      t.integer :step
      t.belongs_to :recipe

      t.timestamps
    end
  end
end
