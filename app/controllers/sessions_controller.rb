class EventsController < ApplicationController
    def omniauth
        @user = User.from_omniauth(auth)
        @user.save
        session[:user_id] = @user.id
        redirect_to home_path
    end
    private
    def auth
        request.env['omniauth.auth']
    end
end
