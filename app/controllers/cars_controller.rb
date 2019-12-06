class CarsController < ApplicationController

    def index 
        @cars = Car.all
    end 


    def show
        @car = Car.find(params[:id])
   end 

   def new 
    @test_drive = TestDrive.new 
    end 

end
