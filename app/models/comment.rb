class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :event

  scope :chronological, -> { order(:created_at) }
  scope :for_event,      ->(event) { where(event: event) }
  scope :for_user,   ->(user) { where(user: user) }

  validates_presence_of :content, :is_public, :event_id, :user_id
end
