class EventTag < ApplicationRecord
  belongs_to :event
  belongs_to :tag

  scope :for_event,      ->(event) { where(event: event) }
  scope :for_tag,   ->(tag) { where(tag: tag) }

  validates_presence_of :event_id, :tag_id
end
