class DriverRaces < ActiveRecord::Migration[5.0]
  def change
    create_table :driver_races do |t|
      t.belongs_to :driver
      t.belongs_to :race
    end
  end
end


# t.string :brand
# t.string :chassis
# t.integer :weight
# t.decimal :cost, :precision => 4, :scale => 2
# t.integer :horsepower
# t.belongs_to :driver
# t.belongs_to :race