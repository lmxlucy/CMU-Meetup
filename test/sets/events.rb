module Contexts
  module Events

    def create_events
      @gratitude    = FactoryBot.create(:event, title: "Stay Grateful: A Weekly Gratitude Session", description: "Practices in gratitude can help us regulate our mood, build our resilience, and cultivate increased happiness and satisfaction. Join us to learn some strategies on how to be more grateful throughout your day, and for a weekly opportunity to practice and to share your gratitude with our CMU community. Zoom link is always the same; join us when you can!", online: true, location: "https://cmu.zoom.us/j/95963148050", date: Time.current+1)
    end
    
    def destroy_events
      @gratitude.destroy
    end

  end
end