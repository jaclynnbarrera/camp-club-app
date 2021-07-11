class SessionsController < ApplicationController

    def new
        @user = User.new
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
        redirect_to '/'
    end

    def FBcreate
        @user = User.find_or_create_by(username: auth.downcase) do |u| 
            u.password = "password"
            #trigger email to set real password
        end
        @user.save
        session[:user_id] = @user.id
        redirect_to user_path(@user)
    end

    private
      
    def auth
        request.env['omniauth.auth']['info']['name'].split.first
    end
    
end

