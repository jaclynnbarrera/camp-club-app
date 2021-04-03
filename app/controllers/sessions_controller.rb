class SessionsController < ApplicationController\

    def new
        # @user = User.new
    end

    def create
        @user = User.find_by(username: params[:user][:username])
        #checking if user entered right password
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        elsif @user
            @errors = ["Invalid Password"]
            render :new
        else
            @errors = ["Invalid Username"]
            render :new
        end
    end

    def destroy
        session.clear
        redirect_to '/signup'
    end

end