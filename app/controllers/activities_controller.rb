class ActivitiesController < ApplicationController

  def show
    strava_activity = Faraday.get("https://www.strava.com/api/v3/activities/#{activity_id}?access_token=#{current_user.token}")
    @activity = JSON.parse(strava_activity.body)
  end

  private

    def activity_id
      params[:id]
    end
end
