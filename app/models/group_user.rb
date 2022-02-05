class GroupUser < ApplicationRecord
  belongs_to :group
  belongs_to :user

  scope :for_group,      ->(group) { where(group: group) }
  scope :for_user,   ->(user) { where(user: user) }

  validates_presence_of :is_organizer, :group_id, :user_id
end
