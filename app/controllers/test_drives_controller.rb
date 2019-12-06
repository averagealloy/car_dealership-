class TestDrivesController < ApplicationController

   def new 
    @car = Car.find(params[:car_id])
    @test_drive = @car.test_drives.build 
    end 


   def create
      @test_drive = current_user.test_drives.build(test_drive_params)
      #probly wrong 
   end  


end



