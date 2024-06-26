class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"

  has_many :event_attendings, foreign_key: :attended_events
  has_many :attendees, through: :event_attendings, source: :attendee
end
