class ProfilesController < ApplicationController

  def show
    @athlete = StravaAthlete.stats(current_user.uid, current_user.token)
  end
end
