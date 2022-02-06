module Contexts
    module EventUsers
  
      def create_event_users
        @event1_lucy = FactoryBot.create(:event_user, event: @event1, user:@lucy)
        @event1_erica = FactoryBot.create(:event_user, event: @event1, user:@erica, is_organizer: false)
        @event1_john = FactoryBot.create(:event_user, event: @event1, user:@john, is_organizer: false)
        @event1_david = FactoryBot.create(:event_user, event: @event1, user:@david, is_organizer: false)
        
        @event2_john = FactoryBot.create(:event_user, event: @event2, user:@john)
        @event2_david = FactoryBot.create(:event_user, event: @event2, user:@david, is_organizer: false)
        @event2_lucy = FactoryBot.create(:event_user, event: @event2, user:@lucy, is_organizer: false)
        
        @event3_erica = FactoryBot.create(:event_user, event: @event3, user:@erica)
        @event4_lucy = FactoryBot.create(:event_user, event: @event4, user:@lucy)
        @event5_erica = FactoryBot.create(:event_user, event: @event5, user:@erica)
        @event6_john = FactoryBot.create(:event_user, event: @event6, user:@john)
      end
      
      def destroy_event_users
        @event1_lucy.destroy
        @event1_erica.destroy
        @event1_john.destroy
        @event1_david.destroy

        @event2_john.destroy
        @event2_david.destroy
        @event2_lucy.destroy

        @event3_erica.destroy
        @event4_lucy.destroy
        @event5_erica.destroy
        @event6_john.destroy
      end
  
    end
end