class CampsitesController < ApplicationController
   
    def index 
        @campsites = Campsite.all
    end 

    def show
        @campsite = Campsite.find_by_id(params[:id])
    end
    
end