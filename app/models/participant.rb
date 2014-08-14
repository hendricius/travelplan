class Participant < ActiveRecord::Base
  belongs_to :trip
  has_many :luggages
  has_many :responsible_luggages
end
