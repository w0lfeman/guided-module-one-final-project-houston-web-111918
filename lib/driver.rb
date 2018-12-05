class Driver < ActiveRecord::Base

has_many :cars
has_many :races, through: :race_cars

end 