module Contexts
    module Groups
  
      def create_groups
        @group1 = FactoryBot.create(:group)
        @group2 = FactoryBot.create(:group, name: "Asian Students Association", description: "Founded in 1990, the Asian Students Association serves as the largest Asian culture affinity group at Carnegie Mellon. We welcome students of all races and nationalities, as we aim to spread awareness of Asian culture for the benefit of the student community.

          We hope to enhance the public understanding of the different cultures and ethnic values among different Asian countries and different Asian American cultures. Unfortunately, many people see Asian culture as a homogenous culture, or dominated by one or two large cultures. We wish to promote the diversity and unique traditions among all Asian cultures.
          
          Additionally, we strive to promote Asian student leaders both within and outside of the Carnegie Mellon campus by providing opportunities to participate in inter collegiate activities and national conferences.")
      end
      
      def destroy_groups
        @group1.destroy
        @group2.destroy
      end
  
    end
end