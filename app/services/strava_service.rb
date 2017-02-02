class StravaService

  def self.activities(token)
    activities = Faraday.get("https://www.strava.com/api/v3/athlete/activities?access_token=#{token}")
    return JSON.parse(activities.body, symbolize_names: true)
  end

  def self.activity(id, token)
    activity = Faraday.get("https://www.strava.com/api/v3/activities/#{id}?access_token=#{token}")
    return JSON.parse(activity.body, symbolize_names: true)
  end
end
