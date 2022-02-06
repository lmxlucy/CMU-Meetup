module Contexts
  module Events

    def create_events
      @event1 = FactoryBot.create(:event, title: "Stay Grateful: A Weekly Gratitude Session", description: "Practices in gratitude can help us regulate our mood, build our resilience, and cultivate increased happiness and satisfaction. Join us to learn some strategies on how to be more grateful throughout your day, and for a weekly opportunity to practice and to share your gratitude with our CMU community. Zoom link is always the same; join us when you can!", online: true, location: "Zoom", start_time: Time.new(2022,2,17,17,00,0), end_time: Time.new(2022,2,17,17,00,0), group: @group1, image: "https://d3flpus5evl89n.cloudfront.net/5edeaea2cd757c5a13281543/612d213ee9d1332bcf15bf9d/scaled_768.jpg")
      @event2 =  FactoryBot.create(:event, title: "Virtual Jumpstart", description: "Utilizing the Handshake platform, Jumpstart is a virtual networking event designed to introduce first-year and sophomore undergraduates to employers who are interested in connecting with talented students. This event is meant to help you learn about employers, internship programs, and professional competencies recruiters are looking for in your industry of interest.", online: true, location: "Handshake", start_time: Time.new(2022,2,14,17,00,0), end_time: Time.new(2022,2,14,20,00,0), image: "https://www.cmu.edu/career/employers/virtual-jumpstart-logo-with-appian-jpg.jpg")
      @event3 = FactoryBot.create(:event)
      @event4 = FactoryBot.create(:event, title: "Kpop Dance Open Class: “Ready to Love” by Seventeen", description: "KPDC is back with weekly Open Classes! On the weeks when we have open classes, they’ll be held in the Fifth and Clyde Commons Dance Room from 7-8pm. Starting us off this Tuesday (10/5), Justin Yook will be teaching “Ready to Love” by Seventeen!As always, no experience is required to come to open classes, so if you’re interested, definitely come out and learn with us :)", location: "Fifth and Clyde Commons Dance Room", start_time: Time.new(2022,2,16,19,00,0), end_time: Time.new(2022,2,16,20,00,0), image: "https://i.zoomtventertainment.com/story/Seventeen.png?tr=w-1200,h-900")
      @event5 = FactoryBot.create(:event, title: "Frick Park Hiking", description: "Let's enjoy nature and make friends!", location: "Frick Park", start_time: Time.new(2022,2,13,10,00,0), end_time: Time.new(2022,2,13,12,00,0), image: "https://pittsburghparks.org/wp-content/uploads/2020/10/FP-gatehouse.jpg")
      @event6 = FactoryBot.create(:event, title: "Chinese New Year Celebration", description: "Let's enjoy some free Chinese food and traditional performances!", location: "UC Black Chairs", start_time: Time.new(2022,2,7,19,00,0), end_time: Time.new(2022,2,7,20,00,0), image: "https://img2.chinadaily.com.cn/images/202106/24/60d3eb97a31024adbdd004b1.jpeg", group: @group2)
    end
    
    def destroy_events
      @event1.destroy
      @event2.destroy
      @event3.destroy
      @event4.destroy
      @event5.destroy
      @event6.destroy
    end

  end
end