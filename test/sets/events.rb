module Contexts
  module Events

    def create_events
      @gratitude    = FactoryBot.create(:event, title: "Stay Grateful: A Weekly Gratitude Session", description: "Practices in gratitude can help us regulate our mood, build our resilience, and cultivate increased happiness and satisfaction. Join us to learn some strategies on how to be more grateful throughout your day, and for a weekly opportunity to practice and to share your gratitude with our CMU community. Zoom link is always the same; join us when you can!", online: true, location: "https://cmu.zoom.us/j/95963148050", start_time: Time.local(2000,"jan",1,20,15,1), end_time: Time.current+1, image: "https://d3flpus5evl89n.cloudfront.net/5edeaea2cd757c5a13281543/612d213ee9d1332bcf15bf9d/scaled_768.jpg")
      @jumpstart    = FactoryBot.create(:event, title: "Virtual Jumpstart", description: "Utilizing the Handshake platform, Jumpstart is a virtual networking event designed to introduce first-year and sophomore undergraduates to employers who are interested in connecting with talented students. This event is meant to help you learn about employers, internship programs, and professional competencies recruiters are looking for in your industry of interest.", online: true, location: "Handshake", start_time: Time.local(2022,"jan",31,17,00,0), end_time: Time.local(2022,"jan",31,20,00,0))
    end
    
    def destroy_events
      @gratitude.destroy
    end

  end
end