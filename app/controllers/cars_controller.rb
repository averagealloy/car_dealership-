class CarsController < ApplicationController
#******************************* SWITCHED TO FIND BY HELPS IN THE DEBUGGING PROCESS ***********************************************

    def index 
        @cars = Car.all # get all the cars every last one of em 
    end 


    def show
        @car = Car.find_by(params[:id]) #if your going to show the car find the right one first 
   end 


#   removed new action did not make sense if a user cant create a car 

    
    def cyl #this a is just a peice if the scope method puzzle 
        @cars = Car.small_cyl #im setting the varible cars equal to cars that meet that condition (small_cyl)
    end 


end
