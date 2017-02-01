class Auth::SessionsController < ApplicationController

  def create
    strava_request = "https://www.strava.com/oauth/token?client_id=#{ENV["strava_client_id"]}&client_secret=#{ENV["strava_client_secret"]}&code=#{params["code"]}"
    strava_response = Faraday.post(strava_request)
    user_data = JSON.parse(strava_response.body)

    if user = User.from_strava(user_data["athlete"], user_data["access_token"])
      session[:user_id] = user.id
    end

    redirect_to dashboard_path
  end
end
