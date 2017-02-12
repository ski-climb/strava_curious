require 'rails_helper'

describe StravaAthlete do
  let(:strava_athlete) { StravaAthlete.new(api_response_athlete) }

  describe "attributes" do
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
