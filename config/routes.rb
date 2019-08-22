Rails.application.routes.draw do

  resources :movies, only: [:index,:show] 

  resources :screenings, only: [:show] do
  	resources :orders, only: [:new, :create]
  end


  namespace :manage do
  	resources :auditoriums
    resources :movies
    resources :screenings
  end

  root to: "movies#index"
end
