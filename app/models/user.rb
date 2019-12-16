class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

         has_many :test_drives #a user can have many testdrives 
         has_many :cars, through: :test_drives # a user can have many cars but only through test drives 
  devise :database_authenticatable, :registerable,  #\
                                                      # devise stuff (alot of able)
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:google_oauth2] #/ could send in as an array if i have more that one 
        

         validates :first_name, presence: true #this is checkiing to see if there is something in the first box
         validates :last_name, presence: true 
         validates :email, uniqueness: true 
        
        
         def self.from_omniauth(auth) #creating a new user from omniauth
            where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
              
            user.first_name = auth.info.first_name # getting the first name from omniauth
            user.last_name = auth.info.last_name  # getting the last name from omniauth
            user.provider = auth.provider 
            user.uid = auth.uid 
            user.email = auth.info.email
            user.password = Devise.friendly_token[0,20]
              end
          end
end
