class Races < ActiveRecord::Migration[5.0]
  def change
    create_table :races do |t|
      t.string :location
      t.date :date
      t.integer :total_laps
      t.integer :total_distance
      t.string :winner
    end
  end
end
