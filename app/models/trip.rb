class Trip < ActiveRecord::Base
  has_many :activities
  has_many :participants
end
