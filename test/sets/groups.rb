module Contexts
    module Groups
  
      def create_groups
        @group1 = FactoryBot.create(:group)
      end
      
      def destroy_groups
        @group1.destroy
      end
  
    end
end