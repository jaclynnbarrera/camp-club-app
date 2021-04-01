class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create

    end
    
    def show
        @user = User.find_by_id(params[:id])
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email)
    end
    
end