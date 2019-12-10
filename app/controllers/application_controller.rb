class ApplicationController < ActionController::Base
    before_action :authenticate_user!, except: :welcome 
    #keep the user out if they havent signed in 
    def welcome 
    end 
end
