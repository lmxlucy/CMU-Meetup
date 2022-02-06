FactoryBot.define do
  
  factory :user do 
    username {"David"}
    bio {"ECE Sophomore"}
    email {"david@andrew.cmu.edu"}
    password {"secret"}
    password_confirmation {"secret"}
    image {"https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/social-media-profile-photos-3.jpg"}
    admin { false }
  end

  factory :group do
    name {"Strategic Social Impact"}
    description {"Do you want to make a positive impact with your career?
 
    We focus on how you can choose your career to have the greatest impact—whether by focusing on alleviating global poverty, trying to prevent future pandemics, trying to prevent nuclear war, and lots more.
     
    Every semester we run a fellowship that outlines all of the areas in which you can have the most impact with your career. The fellowship *is* a bit of a time commitment, taking 3-4 hours per week for eight weeks. There will be weekly meetings and reading assignments. Food will be provided at no cost to you.
    
    We are part of a global movement with groups at every top university. We frequently collaborate with Stanford, MIT, and Cambridge. We welcome both undergrads and graduate students."}
  end

  factory :event do
    title {"2-Day Skiing Trip to Snowshoe"}
    description {"Already have 2, want 2 more to join our trip. Cost: $70 per person including accomodation and transportation"}
    start_time {Time.new(2022,2,19, 9, 30, 00, 0)}
    end_time {Time.new(2022,2,20, 20, 30, 00, 0)}
    image {"https://www.msrgear.com/blog/wp-content/uploads/2016/01/20171221_MSR_SS_1_DSC6658_marquee.jpg"}
  end

  factory :event_user do
    association :event
    association :user
    is_organizer { true }
  end

  factory :group_user do
    association :group
    association :user
    is_organizer { true}
  end
end