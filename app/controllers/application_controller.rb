
class ApplicationController < ActionController::Base

    helper_method(:current_user)

    def home
        
    end 

    def current_user
        @current_user = User.find_by(id: session[:user_id])
    end

    def about
    end

end

 
 