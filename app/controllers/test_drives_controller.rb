class TestDrivesController < ApplicationController

   def new 
      @car = Car.find(params[:car_id])
      @test_drive = @car.test_drives.build 
      #what the hell is .build 
    end 


   def create
       
      # @test_drive = current_user.test_drives.build(car_id: params[:car_id])
       @test_drive = current_user.test_drives.build(test_drifes_params)
         byebug
         if @test_drive.save
            redirect_to car_test_drife_path(@test_drive.car)
         else 
            render :show
         end
   end  

   def show 
      @test_drive = TestDrife.find_by(id: params[:id])
   end 

   def index 
   end    

   private

   def test_drifes_params
      
         params.require(:test_drife).permit(:car_id, :test_drive_date, :user_id)
         
   end 
end



