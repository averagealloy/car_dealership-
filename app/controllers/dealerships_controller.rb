class DealershipsController < ApplicationController

    def index 
        @dealerships = Dealership.all
    end 

    def show
         @dealerships = Dealership.find(params[:id])
    end 
end
