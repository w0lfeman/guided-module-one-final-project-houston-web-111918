class Drivers < ActiveRecord::Migration[5.0]
  def change
    create_table :drivers do |t|
      t.string :name
      t.integer :points
      t.integer :wins
      t.integer :driver_weight
      t.string :driver_height
    end
  end
end
