class CampsitesController < ApplicationController
   
    def index 
        @campsites = Campsite.all
    end 

    def new
        @campsite = Campsite.new
    end

    def create 
        @campsite = Campsite.create(campsite_params)
        redirect_to campsite_path(@campsite)
    end

    def show
        @campsite = Campsite.find(params[:id])
    end

    def edit
        @campsite = Campsite.find(params[:id])
    end

    def update
        @campsite = Campsite.find(params[:id])
        @campsite.update(campsite_params)
        redirect_to campsite_path(@campsite)
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