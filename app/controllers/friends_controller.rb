class FriendsController < ApplicationController

  def index
    @friends = StravaAthlete.friends(current_user.token)
  end

  def show
    @friend = StravaAthlete.friend(params[:id], current_user.token)
  end
end
