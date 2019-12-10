class DealershipsController < ApplicationController

    def index 
        @dealerships = Dealership.all #set dealership to dealership.all (every dealership)
    end 

    def show
         @dealership = Dealership.find_by(id: params[:id]) #find the right dealership. setting id to the specfic params id
    end 
    
end
