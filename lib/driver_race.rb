class DriverRace < ActiveRecord::Base
    belongs_to :races
    belongs_to :drivers
end 
