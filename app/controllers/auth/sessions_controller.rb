class Auth::SessionsController < ApplicationController
  skip_before_action :require_login, only: [:create]

  def create
    user_data = StravaService.authenticate(params["code"])
    user = User.from_strava(user_data[:athlete], user_data[:access_token])
    session[:user_id] = user.id
    user.update(token: user_data[:access_token])

    redirect_to activities_path
  end
end
