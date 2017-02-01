class ActivitiesController < ApplicationController

  def index
    strava_activities = Faraday.get("https://www.strava.com/api/v3/athlete/activities?access_token=#{current_user.token}")
    @activities = JSON.parse(strava_activities.body)
  end

  def show
    strava_activity = Faraday.get("https://www.strava.com/api/v3/activities/#{activity_id}?access_token=#{current_user.token}")
    @activity = JSON.parse(strava_activity.body)
  end

  private

    def activity_id
      params[:id]
    end
end
