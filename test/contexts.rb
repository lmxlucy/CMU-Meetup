# require needed files
require './test/sets/events'
require './test/sets/groups'
require './test/sets/users'
require './test/sets/event_users'


module Contexts
  # explicitly include all sets of contexts used for testing 
  include Contexts::Groups
  include Contexts::Events
  include Contexts::Users
  include Contexts::EventUsers

  
  def create_all
    create_groups
    create_events
    create_users
    create_event_users
  end
  
end