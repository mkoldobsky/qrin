class Awkin < ActiveRecord::Base

  attr_accessible :date, :lat, :long, :total

  belongs_to :generation 
end
