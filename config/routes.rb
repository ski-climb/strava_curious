Rails.application.routes.draw do
  root "home#home"

  namespace :auth do
    get "/strava/callback", to: "sessions#create"
  end

  resource :profile, only: [:show]
  resources :activities, only: [:show, :index]
  resources :friends_activities, only: [:index]
  resources :friends, only: [:index, :show]

  get "/:does_not_exist", to: "nawwal#home"
end
