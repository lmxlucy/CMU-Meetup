class EventUser < ApplicationRecord
  belongs_to :event
  belongs_to :user

  scope :for_event,      ->(event) { where(event: event) }
  scope :for_attendee,   ->(user) { where(user: user, is_organizer: false) }
  scope :for_organizer,  ->(user) { where(user: user, is_organizer: true) }

  validates_presence_of :is_organizer, :event_id, :user_id
end
