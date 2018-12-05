class RaceCars < ActiveRecord::Migration[5.0]
  def change
    create_table :race_cars do |t|
      t.string :brand
      t.string :chassis
      t.integer :weight
      t.integer :cost
      t.integer :horsepower
      t.belongs_to :driver
      t.belongs_to :race
    end
  end
end
