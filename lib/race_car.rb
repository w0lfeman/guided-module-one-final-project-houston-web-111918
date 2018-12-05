class RaceCar < ActiveRecord::Base
    belongs_to :races
    belongs_to :drivers
end 
