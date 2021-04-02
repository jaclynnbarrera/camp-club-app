class ApplicationController < ActionController::Base

    helper_method(:current_user)

    def home
    end 

    def current_user
        @current_user = User.first
    end
    
end