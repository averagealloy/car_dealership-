class CarsController < ApplicationController

    
    def show
        @cars = Car.find(params[:id])
   end 
end
