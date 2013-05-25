class Generation < ActiveRecord::Base
  attr_accessible :hash_name, :name
  has_many :awkins
end
