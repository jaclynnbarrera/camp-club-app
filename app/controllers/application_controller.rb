
class ApplicationController < ActionController::Base

    helper_method(:current_user)
    helper_method(:unsplash_api)

    def home
        
    end 

    def current_user
        @current_user = User.find_by(id: session[:user_id])
    end

    def unsplash_api
        @images = Unsplash::Photo.search("campsite")
        return @images.sample["urls"]["full"]
    end

    def about
    end

end

 
 