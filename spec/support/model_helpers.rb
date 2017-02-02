module ModelHelpers

  def api_response_athlete
    {
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
    }
  end

  def api_response_activity
    {
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
    }
  end
end
