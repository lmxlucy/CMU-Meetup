class Group < ApplicationRecord
# Relationships
  has_many :tag, through: :group_tags
  has_many :user, through: :group_users
  has_many :events
  
# Scopes
  # order by number of participants
  scope :by_participants, -> { order(self.users.count) }

# Validations
  validates_presence_of :name, :description
end
