Rails.application.routes.draw do

 
  resources :movies, only: [:index,:show] 

  resources :screenings, only: [:show] do
  	resources :orders, only: [:new, :create]
  end


  namespace :manage do
    get '', to: 'static#dashboard', as: '/'
  	resources :auditoriums
    resources :movies
    resources :screenings
    resources :orders
  end

  root to: "movies#index"
end
