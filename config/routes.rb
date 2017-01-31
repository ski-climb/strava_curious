Rails.application.routes.draw do
  root "home#home"

  namespace :auth do
    get "/strava/callback", to: "sessions#create"
  end

  resource :dashboard, only: [:show]

  get "/:does_not_exist", to: "nawwal#home"
end
