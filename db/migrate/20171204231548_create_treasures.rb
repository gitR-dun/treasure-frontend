class CreateTreasures < ActiveRecord::Migration[5.1]
  def change
    create_table :treasures do |t|
      t.string :position_one
      t.string :position_two
      t.string :position_three

      t.timestamps
    end
  end
end
