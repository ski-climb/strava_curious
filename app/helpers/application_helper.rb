module ApplicationHelper

  def strava_auth
    <<~HEREDOC
      https://strava.com/oauth/authorize?
      client_id=#{ENV["strava_client_id"]}
      &response_type=code
      &redirect_uri=#{strava_redirect_uri}
      &scope=view_private
    HEREDOC
  end

  private

    def strava_redirect_uri
      "http://localhost:3000/auth/strava/callback"
    end
end
