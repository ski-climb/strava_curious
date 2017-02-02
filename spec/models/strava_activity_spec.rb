require 'rails_helper'

describe StravaActivity do
  describe "attributes" do
    strava_activity = StravaActivity.new({
      "id": 8529483,
      "resource_state": 2,
      "external_id": "2013-08-23-17-04-12.fit",
      "upload_id": 84130503,
      "athlete": {
        "id": 227615,
        "resource_state": 1
      },
      "name": "Afternoon Ride",
      "distance": 32486.1,
      "moving_time": 5241,
      "elapsed_time": 5427,
      "total_elevation_gain": 566.0,
      "type": "Ride",
      "start_date": "2013-08-24T00:04:12Z",
      "start_date_local": "2013-08-23T17:04:12Z",
      "timezone": "(GMT-08:00) America/Los_Angeles",
      "start_latlng": [
        37.793551,
        -122.2686
      ],
      "end_latlng": [
        37.792836,
        -122.268287
      ],
      "achievement_count": 8,
      "kudos_count": 0,
      "comment_count": 0,
      "athlete_count": 1,
      "photo_count": 0,
      "total_photo_count": 0,
      "map": {
        "id": "a77175935",
        "summary_polyline": "cetewLja@zYcG",
        "resource_state": 2
      },
      "trainer": false,
      "commute": false,
      "manual": false,
      "private": false,
      "flagged": false,
      "average_speed": 3.4,
      "max_speed": 4.514,
      "average_watts": 163.6,
      "max_watts": 754,
      "weighted_average_watts": 200,
      "kilojoules": 857.6,
      "device_watts": true,
      "has_heartrate": true,
      "average_heartrate": 138.8,
      "max_heartrate": 179.0
    })

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
