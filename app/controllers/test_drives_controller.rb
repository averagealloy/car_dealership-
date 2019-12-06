class TestDrivesController < ApplicationController

   def new 
    @car = Car.find(params[:car_id])
    @test_drive = @car.test_drives.build 
    end 
end