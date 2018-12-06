class Race < ActiveRecord::Base

has_many :driver_races
has_many :drivers, through: :driver_races

end 