Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: 'registrations', omniauth_callbacks: 'callbacks' }
  root to: 'application#welcome'
  resources :dealerships 
  get 'cars/bettergas', to: 'cars#cyl' #controller/action 
  resources :cars do 
    resources :test_drives
  end   
end
