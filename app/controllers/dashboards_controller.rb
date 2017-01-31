class DashboardsController < ApplicationController

  def show
    strava_activities = Faraday.get("https://www.strava.com/api/v3/athlete/activities?access_token=#{current_user.token}")
    # strava_streams = Faraday.get("https://www.strava.com/api/v3/activities/849984063/streams/latlng?access_token=#{current_user.token}&resolution=low")
    @activities = JSON.parse(strava_activities.body)
    # @streams = JSON.parse(strava_streams.body)
    render json: @activities
  end
end
