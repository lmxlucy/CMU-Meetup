class EventUser < ApplicationRecord
  belongs_to :event
  belongs_to :user

  scope :for_event,      ->(event) { where(event: event) }
  scope :for_user,   ->(user) { where(user: user) }

  validates_presence_of :is_organizer, :event_id, :user_id
end
