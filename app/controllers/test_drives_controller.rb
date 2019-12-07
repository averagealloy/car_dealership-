class TestDrivesController < ApplicationController

   def new 
      @car = Car.find(params[:car_id])
      @test_drive = @car.test_drives.build 
    end 


   def create
      
      @test_drive = current_user.test_drives.build(car_id: params[:car_id], 
         test_drive_date: params[:test_drifes_params])
         if @test_drive.save
            redirect_to  car_test_drife_path(@test_drive.car)
         else 
            render :new
         end 
     
   end  

   def show 
      @test_drive = TestDrife.find_by(id: params[:id])
   end 

   private

   def test_drifes_params
       params.require(:test_drife).permit("test_drive_date(1i)", "test_drive_date(2i)", "test_drive_date(3i)", "car_id") 
   end 

end



