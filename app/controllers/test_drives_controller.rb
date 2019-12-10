class TestDrivesController < ApplicationController

   def new 
      @car = Car.find(params[:car_id]) #find the right car params 
      @test_drive = @car.test_drives.build # have a testdrive equal a specfic cars test drive and then create a new place in memmory 
      #.build is an alias to .new thanks to stack over 
    end 


   def create
       @test_drive = current_user.test_drives.build(test_drifes_params) # have test drive equal a new current users test drive 
         if @test_drive.save #this is checking if the test_drive has been saved 
            redirect_to car_test_drife_path(@test_drive.car.id, @test_drive.id) #redirect to the corisponding path with two aruguments the car id and the test drive id 
         else #if not 
            render :new #with out anything being saved show them the show page 
         end
   end  

   def show 
      @test_drive = TestDrife.find_by(id: params[:id]) #I know that find by YOU WILL GET NIL but the this is saying find test dive and set its params 
   end 

    

   private # the stay off my lawn line 

   def test_drifes_params
         params.require(:test_drife).permit(:car_id, :test_drive_date, :user_id) #defining the testdrive params to be car_id, testdrive date and user id because that all I need 
   end 
end



