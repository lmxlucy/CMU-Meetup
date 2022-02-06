module Contexts
    module Users
  
      def create_users
        @david = FactoryBot.create(:user)
        @lucy = FactoryBot.create(:user, email: "lucy@andrew.cmu.edu", username: "Lucy", bio: "Information Systems Junior", image: "https://www.whatsappprofiledpimages.com/wp-content/uploads/2021/08/Profile-Photo-Wallpaper.jpg", admin:true)
        @erica = FactoryBot.create(:user, email: "erica@andrew.cmu.edu", username: "Erica", bio: "Information Systems Sophomore", image: "http://lavinephotography.com.au/wp-content/uploads/2017/01/PROFILE-Photography-112.jpg", admin:false)
        @john = FactoryBot.create(:user, email: "john@andrew.cmu.edu", username: "John", bio: "Math Sophomore", image: "https://www.jeancoutu.com/globalassets/revamp/photo/conseils-photo/20160302-01-reseaux-sociaux-profil/photo-profil_301783868.jpg", admin:false)
      end
      
      def destroy_users
        @david.destroy
        @lucy.destroy
        @erica.destroy
        @john.destroy
      end
  
    end
end