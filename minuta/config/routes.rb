Rails.application.routes.draw do

  root 'clients#index'

  resources :clients
  resources :schedules
  resources :services
  resources :professionals

end
