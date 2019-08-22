Rails.application.routes.draw do

  resources :movies, only: [:index,:show]

  namespace :manage do
  	resources :auditoriums
    resources :movies
    resources :screenings
  end

  root to: "movies#index"
end
