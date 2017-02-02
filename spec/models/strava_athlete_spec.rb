require 'rails_helper'

describe StravaAthlete do
  describe "attributes" do
    strava_athlete = StravaAthlete.new({
      "biggest_ride_distance": 175454.0,
      "biggest_climb_elevation_gain": 1882.6999999999998,
      "recent_ride_totals": {
        "count": 3,
        "distance": 12054.900146484375,
        "moving_time": 2190,
        "elapsed_time": 2331,
        "elevation_gain": 36.0,
        "achievement_count": 0
      },
      "recent_run_totals": {
        "count": 23,
        "distance": 195948.40002441406,
        "moving_time": 65513,
        "elapsed_time": 75232,
        "elevation_gain": 2934.3999996185303,
        "achievement_count": 46
      },
      "recent_swim_totals": {
        "count": 2,
        "distance": 1117.2000122070312,
        "moving_time": 1744,
        "elapsed_time": 1942,
        "elevation_gain": 0.0,
        "achievement_count": 0
      },
      "ytd_ride_totals": {
        "count": 134,
        "distance": 4927252,
        "moving_time": 659982,
        "elapsed_time": 892644,
        "elevation_gain": 49940
      },
      "ytd_run_totals": {
        "count": 111,
        "distance": 917100,
        "moving_time": 272501,
        "elapsed_time": 328059,
        "elevation_gain": 7558
      },
      "ytd_swim_totals": {
        "count": 8,
        "distance": 10372,
        "moving_time": 8784,
        "elapsed_time": 11123,
        "elevation_gain": 0
      },
      "all_ride_totals": {
        "count": 375,
        "distance": 15760015,
        "moving_time": 2155741,
        "elapsed_time": 2684286,
        "elevation_gain": 189238
      },
      "all_run_totals": {
        "count": 272,
        "distance": 2269557,
        "moving_time": 673678,
        "elapsed_time": 812095,
        "elevation_gain": 23780
      },
      "all_swim_totals": {
        "count": 8,
        "distance": 10372,
        "moving_time": 8784,
        "elapsed_time": 11123,
        "elevation_gain": 0
      }
    })

    subject { strava_athlete }
    it { is_expected.to respond_to(:biggest_ride_distance) } 
    it { is_expected.to respond_to(:biggest_ride_distance) }
    it { is_expected.to respond_to(:biggest_climb_elevation_gain) }
    it { is_expected.to respond_to(:total_ride_distance) }
    it { is_expected.to respond_to(:total_ride_duration) }
    it { is_expected.to respond_to(:total_ride_elevation_gain) }
    it { is_expected.to respond_to(:total_run_distance) }
    it { is_expected.to respond_to(:total_run_duration) }
    it { is_expected.to respond_to(:total_run_elevation_gain) }
    it { is_expected.to respond_to(:total_swim_distance) }
    it { is_expected.to respond_to(:total_swim_duration) }
  end
end
