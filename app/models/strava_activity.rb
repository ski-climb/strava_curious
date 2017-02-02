class StravaActivity
  attr_reader :id,
              :name,
              :distance,
              :type,
              :start_date_local,
              :elapsed_time,
              :total_elevation_gain,
              :average_speed,
              :max_speed,
              :average_heartrate,
              :max_heartrate

  def initialize(data = {})
    @id =                   data[:id]
    @name =                 data[:name]
    @distance =             data[:distance]
    @type =                 data[:type]
    @start_date_local =     data[:start_date_local]
    @elapsed_time =         data[:elapsed_time]
    @total_elevation_gain = data[:total_elevation_gain]
    @average_speed =        data[:average_speed]
    @max_speed =            data[:max_speed]
    @average_heartrate =    data[:average_heartrate]
    @max_heartrate =        data[:max_heartrate]
  end

  def self.activities(token)
    activities = StravaService.activities(token)
    activities.map do |raw_activity|
      self.new(raw_activity)
    end
  end

  def self.activity(activity_id, token)
    raw_activity = StravaService.activity(activity_id, token)
    self.new(raw_activity)
  end
end
