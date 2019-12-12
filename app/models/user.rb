class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

         has_many :test_drives #a user can have many testdrives 
         has_many :cars, through: :test_drives # a user can have many cars but only through test drives 
  devise :database_authenticatable, :registerable,  #\
                                                      # devise stuff (alot of ab)
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:google_oauth2] #/ could sen in as an array if i have more that one 
        
        
         def self.from_omniauth(auth)
            where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
            user.provider = auth.provider
            user.uid = auth.uid
            user.email = auth.info.email
            user.password = Devise.friendly_token[0,20]
              end
          end

          validates :email, uniqueness: true
          validates :email, presence: true
end
