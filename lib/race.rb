class Race < ActiveRecord::Base

has_many :race_cars
has_many :drivers, through: :race_cars

end 