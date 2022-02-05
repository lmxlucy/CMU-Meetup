class Tag < ApplicationRecord
# Relationships
  has_many :group, through: :group_tags
  has_many :event, through: :event_tags
  
# Scopes
  scope :alphabetical, -> { order(:name) }

# Validations
  validates_presence_of :name
end
