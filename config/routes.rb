Rails.application.routes.draw do

  resources :albums
  # devise_for :users, except: :registrations/

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :users
  root to: 'index#index'

end