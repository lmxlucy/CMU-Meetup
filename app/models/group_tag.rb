class GroupTag < ApplicationRecord
  belongs_to :group
  belongs_to :tag

  scope :for_group,      ->(group) { where(group: group) }
  scope :for_tag,   ->(tag) { where(tag: tag) }

  validates_presence_of :group_id, :tag_id
end
