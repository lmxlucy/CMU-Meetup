module Contexts
    module EventUsers
  
      def create_event_users
        @event1_lucy = FactoryBot.create(:event_user, event: @event1, user:@lucy)
        @event1_erica = FactoryBot.create(:event_user, event: @event1, user:@erica, is_organizer: false)
        @event1_john = FactoryBot.create(:event_user, event: @event1, user:@john, is_organizer: false)
      end
      
      def destroy_event_users
        @event1_lucy.destroy
        @event1_erica.destroy
        @event1_john.destroy
      end
  
    end
end