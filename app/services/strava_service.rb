class StravaService

  def self.activities(token)
    activities = conn.get("/api/v3/athlete/activities", {access_token: token})
    return JSON.parse(activities.body, symbolize_names: true)
  end

  def self.activity(id, token)
    activity = conn.get("/api/v3/activities/#{id}", {access_token: token})
    return JSON.parse(activity.body, symbolize_names: true)
  end

  def self.stats(athlete_id, token)
    stats = conn.get("/api/v3/athletes/#{athlete_id}/stats", {access_token: token})
    return JSON.parse(stats.body, symbolize_names: true)
  end

  private

    def self.conn
      Faraday.new(url: "https://www.strava.com")
    end
end
