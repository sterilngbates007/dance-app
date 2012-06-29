class Contest < ActiveRecord::Base
  attr_accessible :name, :date
  
  has_many :judges
  has_many :contestants
  has_many :rounds
end
