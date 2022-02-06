class Ability
    include CanCan::Ability
  
    def initialize(user)
      # set user to new User if not logged in
      user ||= User.new(admin: null) # i.e., a guest user
      
      # set authorizations for different user roles
      # guest mode
      if user.admin.nil?
        can :index, Event
        can :show, Event
        can :index, Group
        can :show, Group
        
      # admin mode
      elsif user.admin
        # they get to do it all
        can :manage, :all
        
      # signed-in user mode
      else
        can :index, Event
        can :show, Event
        can :new, Event
        # they can manage their own events
        can :manage, Event do |this_event|  
            my_events = EventUser.for_organizer(user).map(&:event_id)
            my_events.include? this_event.id 
        end
        
        can :index, Group
        can :show, Group
        can :new, Group
        # they can manage their own groups
        can :manage, Group do |this_group|  
            my_groups = GroupUser.for_organizer(user).map(&:group_id)
            my_groups.include? this_group.id 
        end

        can :show, User
        # they can update their own profile
        can :update, User do |u|  
          u.id == user.id
        end
      end
    end
  end
  