module Contexts
  module Events

    def create_events
      @event1 = FactoryBot.create(:event, title: "Stay Grateful: A Weekly Gratitude Session", description: "Practices in gratitude can help us regulate our mood, build our resilience, and cultivate increased happiness and satisfaction. Join us to learn some strategies on how to be more grateful throughout your day, and for a weekly opportunity to practice and to share your gratitude with our CMU community. Zoom link is always the same; join us when you can!", online: true, location: "Zoom", start_time: Time.new(2022,2,17,17,00,0), end_time: Time.new(2022,2,17,17,00,0), group: @group1, image: "https://d3flpus5evl89n.cloudfront.net/5edeaea2cd757c5a13281543/612d213ee9d1332bcf15bf9d/scaled_768.jpg")
      @event2 =  FactoryBot.create(:event, title: "Virtual Jumpstart", description: "Utilizing the Handshake platform, Jumpstart is a virtual networking event designed to introduce first-year and sophomore undergraduates to employers who are interested in connecting with talented students. This event is meant to help you learn about employers, internship programs, and professional competencies recruiters are looking for in your industry of interest.", online: true, location: "Handshake", start_time: Time.new(2022,2,17,17,00,0), end_time: Time.new(2022,2,17,20,00,0), image: "https://www.cmu.edu/career/employers/virtual-jumpstart-logo-with-appian-jpg.jpg")
      @event3 = FactoryBot.create(:event)
    end
    
    def destroy_events
      @event1.destroy
      @event2.destroy
      @event3.destroy
    end

  end
end