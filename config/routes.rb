Rails.application.routes.draw do
  resources :cars
  devise_for :users, :controllers => {registrations: 'registrations' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users 
  root to: 'application#welcome'
  resources :dealerships 
end
