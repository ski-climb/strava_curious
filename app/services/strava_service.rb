class StravaService

  def self.activities(token)
    activities = conn.get("/api/v3/athlete/activities", {access_token: token})
    JSON.parse(activities.body, symbolize_names: true)
  end

  def self.friends_activities(token)
    activities = conn.get("/api/v3/activities/following", {access_token: token})
    JSON.parse(activities.body, symbolize_names: true)
  end

  def self.activity(id, token)
    activity = conn.get("/api/v3/activities/#{id}", {access_token: token})
    JSON.parse(activity.body, symbolize_names: true)
  end

  def self.stats(athlete_id, token)
    stats = conn.get("/api/v3/athletes/#{athlete_id}/stats", {access_token: token})
    JSON.parse(stats.body, symbolize_names: true)
  end

  def self.friends(token)
    friends = conn.get("/api/v3/athlete/friends", {access_token: token})
    JSON.parse(friends.body, symbolize_names: true)
  end

  def self.friend(friend_id, token)
    friend = conn.get("/api/v3/athletes/#{friend_id}", {access_token: token})
    JSON.parse(friend.body, symbolize_names: true)
  end

  def self.authenticate(code)
    user = conn.post("/oauth/token", {
      client_id: ENV["STRAVA_CLIENT_ID"],
      client_secret: ENV["STRAVA_CLIENT_SECRET"],
      code: code
    })
    JSON.parse(user.body, symbolize_names: true)
  end

  private

    def self.conn
      Faraday.new(url: "https://www.strava.com")
    end
end
