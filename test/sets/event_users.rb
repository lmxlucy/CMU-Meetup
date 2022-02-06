module Contexts
    module EventUsers
  
      def create_event_users
        @event1_lucy = FactoryBot.create(:event_user, event: @event1, user:@lucy)
        @event1_erica = FactoryBot.create(:event_user, event: @event1, user:@erica, is_organizer: false)
        @event1_john = FactoryBot.create(:event_user, event: @event1, user:@john, is_organizer: false)
        @event2_john = FactoryBot.create(:event_user, event: @event2, user:@john)
        @event3_erica = FactoryBot.create(:event_user, event: @event3, user:@erica)
      end
      
      def destroy_event_users
        @event1_lucy.destroy
        @event1_erica.destroy
        @event1_john.destroy
        @event2_john.destroy
        @event3_erica.destroy
      end
  
    end
end