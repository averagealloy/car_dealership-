class CarsController < ApplicationController

    def index 
        @cars = Car.all # get all the cars every last one of em 
    end 


    def show
        @car = Car.find(params[:id]) #if your going to show the car find the right one first 
   end 


   def new 
    @car = Car.new # set car to car.new 
    @test_drive = TestDrive.new #set test drive to test_drive.new 
    end 

    
    def cyl
        @cars = Car.small_cyl
    end 


end
