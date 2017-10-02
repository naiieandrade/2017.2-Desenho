Rails.application.routes.draw do

  root 'clients#index'

  resources :clients
  resources :schedules do
    resources :client_schedules
  end
  resources :services
  resources :professionals

end
