class CampsitesController < ApplicationController
   
    def index 
        if params[:user_id]
            user = User.find_by(id: params[:user_id])
            @campsites = user.campsites
        else
            @campsites = Campsite.all
        end
    end 
 
    def new
        @campsite = Campsite.new
        @campsite.reviews.build
        @users = User.all
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

    private

    def campsite_params
        params.require(:campsite).permit(:name, :address, :bio, reviews_attributes: [:rating, :review, :user_id]  )
    end

end