class FriendsActivitiesController < ApplicationController

  def index
    @activities = StravaActivity.friends_activities(current_user.token)
  end
end
