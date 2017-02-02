require 'rails_helper'

describe StravaActivity do
  describe "attributes" do
    let(:strava_activity)  { StravaActivity.new(api_response_activity) }
    subject { strava_activity }

    it { is_expected.to respond_to(:id) }
    it { is_expected.to respond_to(:name) }
    it { is_expected.to respond_to(:distance) }
    it { is_expected.to respond_to(:type) }
    it { is_expected.to respond_to(:start_date_local) }
    it { is_expected.to respond_to(:elapsed_time) }
    it { is_expected.to respond_to(:total_elevation_gain) }
    it { is_expected.to respond_to(:average_speed) }
    it { is_expected.to respond_to(:max_speed) }
    it { is_expected.to respond_to(:average_heartrate) }
    it { is_expected.to respond_to(:max_heartrate) }
  end
end
