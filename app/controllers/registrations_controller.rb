
class RegistrationsController < Devise::RegistrationsController


    #using devise gem for this 
    private #you cant change this stuff 
    def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end
    
    def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end
 end
    