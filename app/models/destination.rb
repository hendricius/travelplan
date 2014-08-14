class Destination < ActiveRecord::Base
  belongs_to :trip
  belongs_to :participant
  acts_as_votable 
end
