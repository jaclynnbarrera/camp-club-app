class CampsitesController < ApplicationController
   
    def index 
        @images = Unsplash::Photo.search("campsite")
        if params[:user_id]
            user = User.find_by(id: params[:user_id])
            @campsites = user.campsites
        elsif params[:state]
            @campsites = Campsite.state_search(params[:state])
        else
            @campsites = Campsite.all
        end
    end 
 
    def new
        if current_user == nil
            flash[:alert] = 'Must be logged in to submit a new campsite'
            redirect_to new_user_path
        else 
            @campsite = Campsite.new
            @campsite.reviews.build
            @user = current_user
        end
    end

    def create 
        @campsite = Campsite.new(campsite_params)
        if @campsite.save
            redirect_to campsite_path(@campsite)
        else
            @errors = @campsite.errors.full_messages
            render :new
        end
    end

    def show
        @campsite = Campsite.find(params[:id])
    end

    def edit
        @campsite = Campsite.find(params[:id])
    end

    def update
        @campsite = Campsite.find(params[:id])
        #update will return false if it doesnt
        if @campsite.update(campsite_params)
            redirect_to campsite_path(@campsite)
        else
            @errors = @campsite.errors.full_messages
            render :edit
        end
    end

    def destroy
        @campsite = Campsite.find(params[:id])
        @campsite.delete
        redirect_to campsites_path
    end

    def lucky
        @campsite = Campsite.all.sample(1)[0]
    end

    private

    def campsite_params
        params.require(:campsite).permit(:name, :state, :rv, :bathroom, :firewood, :pets, reviews_attributes: [:rating, :review, :user_id])
    end

end

