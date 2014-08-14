class Luggage < ActiveRecord::Base
  belongs_to :trip
  belongs_to :participant
end
