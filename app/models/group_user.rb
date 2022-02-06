class GroupUser < ApplicationRecord
  belongs_to :group
  belongs_to :user

  scope :for_group,      ->(group) { where(group: group) }
  scope :for_attendee,   ->(user) { where(user: user, is_organizer: false) }
  scope :for_organizer,  ->(user) { where(user: user, is_organizer: true) }

  validates_presence_of :is_organizer, :group_id, :user_id
end
