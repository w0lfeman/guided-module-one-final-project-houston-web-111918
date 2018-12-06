class Driver < ActiveRecord::Base

has_many :cars
has_many :races, through: :driver_races

end 