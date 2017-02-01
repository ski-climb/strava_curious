class ProfilesController < ApplicationController

  def show
    athlete_stats = Faraday.get("https://www.strava.com/api/v3/athletes/#{current_user.uid}/stats?access_token=#{current_user.token}")
    @athlete = JSON.parse(athlete_stats.body)
  end
end
