class Awkin < ActiveRecord::Base

  attr_accessible :date, :lat, :long

  belongs_to :generation 
  belongs_to :location
end
