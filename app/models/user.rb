class User < ApplicationRecord
# Relationships
  has_many :group, through: :group_users
  has_many :event, through: :event_users
  has_many :comment

# Scopes
  # alphabetical: order alphabetically
  scope :alphabetical, -> { order(:username) }

# Validations
  validates_presence_of :email, :password_digest, :username, :admin
  validates_uniqueness_of :email
  validates_presence_of :password, :on => :create 
  validates_presence_of :password_confirmation, :on => :create 
  validates_confirmation_of :password, message: "does not match"
  validates_length_of :password, :minimum => 4, message: "must be at least 4 characters long", :allow_blank => true
  validates_format_of :email, with: /\A[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|info))\z/i, message: "is not a valid format"

# Methods
  # Use built-in rails support for password protection
  has_secure_password
  
  # login by email
  def self.authenticate(email, password)
    find_by_username(email).try(:authenticate, password)
  end
end
