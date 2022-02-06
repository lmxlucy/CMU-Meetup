module Contexts
  module Groups

    def create_groups
      @g    = FactoryBot.create(:event, title: "Stay Grateful: A Weekly Gratitude Session", description: "Practices in gratitude can help us regulate our mood, build our resilience, and cultivate increased happiness and satisfaction. Join us to learn some strategies on how to be more grateful throughout your day, and for a weekly opportunity to practice and to share your gratitude with our CMU community. Zoom link is always the same; join us when you can!", online: true, location: "https://cmu.zoom.us/j/95963148050", start_time: Time.local(2000,"jan",1,20,15,1), end_time: Time.current+1, image: "https://d3flpus5evl89n.cloudfront.net/5edeaea2cd757c5a13281543/612d213ee9d1332bcf15bf9d/scaled_768.jpg")
    end
    
    def destroy_events
      @gratitude.destroy
    end

  end
end