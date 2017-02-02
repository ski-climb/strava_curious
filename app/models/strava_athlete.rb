class StravaAthlete
  attr_reader :biggest_ride_distance,
              :biggest_ride_distance,
              :biggest_climb_elevation_gain,
              :total_ride_distance,
              :total_ride_duration,
              :total_ride_elevation_gain,
              :total_run_distance,
              :total_run_duration,
              :total_run_elevation_gain,
              :total_swim_distance,
              :total_swim_duration

  def initialize(data = {})
    @biggest_ride_distance =        data[:biggest_ride_distance]
    @biggest_climb_elevation_gain = data[:biggest_climb_elevation_gain]
    @total_ride_distance =          data[:all_ride_totals][:distance]
    @total_ride_duration =          data[:all_ride_totals][:moving_time]
    @total_ride_elevation_gain =    data[:all_ride_totals][:elevation_gain]
    @total_run_distance =           data[:all_run_totals][:distance]
    @total_run_duration =           data[:all_run_totals][:moving_time]
    @total_run_elevation_gain =     data[:all_run_totals][:elevation_gain]
    @total_swim_distance =          data[:all_swim_totals][:distance]
    @total_swim_duration =          data[:all_swim_totals][:moving_time]
  end

  def self.stats(athlete_id, token)
    raw_stats = StravaService.stats(athlete_id, token)
    self.new(raw_stats)
  end
end
