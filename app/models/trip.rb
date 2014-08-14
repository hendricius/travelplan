class Trip < ActiveRecord::Base
  has_many :activities
  has_many :participants
  has_many :destinations
  has_many :luggages
end
