class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,  #\
                                                      # devise stuff (alot of ab)
         :recoverable, :rememberable, :validatable  #/
        
         has_many :test_drives #a user can have many testdrives 
         has_many :cars, through: :test_drives # a user can have many cars but only through test drives 

end
