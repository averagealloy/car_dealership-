Rails.application.routes.draw do
  root to: 'application#welcome'
  resources :dealerships 
  resources :cars do 
    resources :test_drives
  end 
  devise_for :users, :controllers => {registrations: 'registrations', omniauth_callbacks: 'callbacks' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   

  
end
