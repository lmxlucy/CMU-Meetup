module Contexts
    module GroupUsers
  
      def create_group_users
        @group1_lucy = FactoryBot.create(:group_user, group: @group1, user:@lucy)
        @group1_erica = FactoryBot.create(:group_user, group: @group1, user:@erica, is_organizer: false)
        @group1_john = FactoryBot.create(:group_user, group: @group1, user:@john, is_organizer: false)
        
        @group2_erica = FactoryBot.create(:group_user, group: @group2, user:@erica)
        @group2_david = FactoryBot.create(:group_user, group: @group2, user:@david, is_organizer: false)
        @group2_john = FactoryBot.create(:group_user, group: @group2, user:@john, is_organizer: false)
      end
      
      def destroy_group_users
        @group1_lucy.destroy
        @group1_erica.destroy
        @group1_john.destroy

        @group2_erica.destroy
        @group2_david.destroy
        @group2_john.destroy
      end
  
    end
end