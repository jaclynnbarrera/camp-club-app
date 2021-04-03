class UsersController < ApplicationController

    # def index
    #     @users = User.all
    # end
    
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            #login user
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            @errors = @user.errors.full_messages
            render :new
        end
    end
    
    def show
        @user = User.find(params[:id])
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        redirect_to users_path(@review)
    end

    def destroy
        @user = User.find(params[:id])
        @user.delete
        redirect_to users_path
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end
    
end