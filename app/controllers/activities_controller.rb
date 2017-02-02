class ActivitiesController < ApplicationController

  def index
    @activities = StravaActivity.activities(current_user.token)
  end

  def show
    @activity = StravaActivity.activity(activity_id, current_user.token)
  end

  private

    def activity_id
      params[:id]
    end
end
