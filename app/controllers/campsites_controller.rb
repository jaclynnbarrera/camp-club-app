class CampsitesController < ApplicationController
   
    def index 
        @campsites = Campsite.all
    end 

    def show
        @campsite = Campsite.find_by_id(params[:id])
    end

    def new
        @campsite = Campsite.new
    end

    def create 
        @campsite = Campsite.create(campsite_params)
        redirect_to campsite_path(@campsite)
    end

    def edit
        
    end

    def update
        
    end

    private

    def campsite_params
        params.require(:campsite).permit(:name, :address, :bio)
    end

    
end