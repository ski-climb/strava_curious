module ApplicationHelper

  def strava_auth
    <<~HEREDOC
      https://strava.com/oauth/authorize?
      client_id=#{ENV["STRAVA_CLIENT_ID"]}
      &response_type=code
      &redirect_uri=#{strava_redirect_uri}
      &scope=view_private
    HEREDOC
  end

  def in_miles(meters)
    meters ? (meters / 1609.34).round(2) : 0
  end

  def in_hours(seconds)
    seconds ? (seconds / 3600.to_f).round(2) : 0
  end

  def in_feet(meters)
    meters ? (meters * 3.28084).round(2) : 0
  end

  def display_time(time)
    DateTime.parse(time).strftime('%l:%M %p - %e %B %Y')
  end

  def in_mph(meters_per_second)
    (meters_per_second * 2.23694).round(2)
  end

  private

    def strava_redirect_uri
      "http://localhost:3000/auth/strava/callback"
    end
end
