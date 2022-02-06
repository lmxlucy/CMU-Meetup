# require needed files
require './test/sets/events'
require './test/sets/groups'
require './test/sets/users'
require './test/sets/event_users'
require './test/sets/group_users'


module Contexts
  # explicitly include all sets of contexts used for testing 
  include Contexts::Groups
  include Contexts::Events
  include Contexts::Users
  include Contexts::EventUsers
  include Contexts::GroupUsers

  
  def create_all
    create_users
    create_groups
    create_events
    create_event_users
    create_group_users
  end
end