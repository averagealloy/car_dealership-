class DealershipsController < ApplicationController
#******************************* SWITCHED TO FIND BY HELPS IN THE DEBUGGING PROCESS ***********************************************
    def index 
        
        @dealerships = Dealership.all #set dealership to dealership.all (every dealership)
        
        if params[:name]
            @dealerships= Dealership.where("name = ?", params[:name]) 

        end 
    end 

    def show
         @dealership = Dealership.find_by(id: params[:id]) #find the right dealership. setting id to the specfic params id
    end 
    

end

# if "search term" == true 
#     go to that dealership (link_to "string " )



# SELECT * FROM DEALERSHIPS WHERE NAME = TERM 