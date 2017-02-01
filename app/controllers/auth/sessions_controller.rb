class Auth::SessionsController < ApplicationController
  skip_before_action :require_login, only: [:create]

  def create
    strava_request = "https://www.strava.com/oauth/token?client_id=#{ENV["STRAVA_CLIENT_ID"]}&client_secret=#{ENV["STRAVA_CLIENT_SECRET"]}&code=#{params["code"]}"
    strava_response = Faraday.post(strava_request)
    user_data = JSON.parse(strava_response.body)

    if user = User.from_strava(user_data["athlete"], user_data["access_token"])
      session[:user_id] = user.id
      user.update(token: user_data["access_token"])
    end

    redirect_to activities_path
  end
end
