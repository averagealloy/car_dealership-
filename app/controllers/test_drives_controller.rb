class TestDrivesController < ApplicationController

   def new 
    @car = Car.find(params[:car_id])
    @test_drive = @car.test_drives.build 
    end 


   def create
    @test_drive = TestDrife.find(params[:car_id])
   end  
end