class Luggage < ActiveRecord::Base
  belongs_to :trip
  belongs_to :participant
  belongs_to :responsible_person, class_name: "Participant", foreign_key: :taken_care_of_by_id
  acts_as_votable
end
