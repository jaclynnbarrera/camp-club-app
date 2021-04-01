class CampsitesController < ApplicationController
   
    def index 
        @campsites = Campsite.all
    end 

    def show
        @campsite = Campsite.find(params[:id])
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

    def destroy
        @campsite = Campsite.find(params[:id])
        @campsite.delete
        redirect_to campsites_path
    end

    private

    def campsite_params
        params.require(:campsite).permit(:name, :address, :bio)
    end

    
end