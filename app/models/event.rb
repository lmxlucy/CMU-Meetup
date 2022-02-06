class Event < ApplicationRecord
# Relationships
  belongs_to :group, optional: true
  has_many :tag, through: :event_tags
  has_many :user, through: :event_users
  has_many :comment

# Scopes
  # future: return all current/future events
  scope :future, -> { where('date >=?', Time.current)}
  # past: return all past events
  scope :past, -> { where('date <?', Time.current)}
  # chronological: order chronologically
  scope :chronological, -> { order(:date) }
  # full: return events that are full
  scope :full, -> { where('limit <=?', self.event_users.count) }
  # available: return events that can accept more participants 
  scope :available, -> { where('limit >?', self.event_users.count) }
  # for_group: return events of the given group
  scope :for_group, ->(group) { where(group: group) }

# Validations
  validates_presence_of :title, :description, :start_time, :end_time
  # validates_date :start_time, on_or_after: ->{ Time.current }, on_or_after_message: "cannot be in the past"
  # validates_date :end_time, on_or_after: ->{ :start_time }, on_or_after_message: "cannot be before start date"


end
