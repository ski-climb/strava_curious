require 'rails_helper'

describe StravaService do
  let(:token) { ENV["ACCESS_TOKEN"] }

  describe "logged in user's activities" do
    context ".activities" do
      it "returns the activities for the current user", :vcr => true do
        raw_activities = StravaService.activities(token)
        expect(raw_activities).to be_an Array

        raw_activitiy = raw_activities.first
        expect(raw_activitiy).to have_key :name
        expect(raw_activitiy).to have_key :distance
        expect(raw_activitiy).to have_key :type
        expect(raw_activitiy).to have_key :start_date_local

        expect(raw_activitiy[:name]).to be_a String
      end
    end

    context ".activity" do
      it "returns one activity for the current user", :vcr => true do
        activity_id = 851250245
        raw_activity = StravaService.activity(activity_id, token)
        expect(raw_activity).to be_a Hash

        expect(raw_activity).to have_key :id
        expect(raw_activity).to have_key :name
        expect(raw_activity).to have_key :distance
        expect(raw_activity).to have_key :type
        expect(raw_activity).to have_key :start_date_local
        expect(raw_activity).to have_key :elapsed_time
        expect(raw_activity).to have_key :total_elevation_gain
        expect(raw_activity).to have_key :average_speed
        expect(raw_activity).to have_key :max_speed
        expect(raw_activity).to have_key :average_heartrate
        expect(raw_activity).to have_key :max_heartrate
        expect(raw_activity[:name]).to be_a String
      end
    end

    context ".stats" do
      it "returns the all-time statistics for the current user", :vcr => true do
        athlete_id = 9685944
        raw_stats = StravaService.stats(athlete_id, token)
        expect(raw_stats).to be_an Hash

        expect(raw_stats).to have_key :biggest_ride_distance
        expect(raw_stats).to have_key :biggest_climb_elevation_gain
        expect(raw_stats).to have_key :all_ride_totals
        expect(raw_stats).to have_key :all_run_totals
        expect(raw_stats).to have_key :all_swim_totals

        expect(raw_stats[:biggest_ride_distance]).to be_a Float
      end
    end
  end

  describe "logged in user's friends' activities" do
    context ".friends_activities" do
      it "returns the activities for the current user's friends", :vcr => true do
        raw_activities = StravaService.friends_activities(token)
        expect(raw_activities).to be_an Array

        raw_activitiy = raw_activities.first
        expect(raw_activitiy).to have_key :name
        expect(raw_activitiy).to have_key :distance
        expect(raw_activitiy).to have_key :type
        expect(raw_activitiy).to have_key :start_date_local

        expect(raw_activitiy[:name]).to be_a String
      end
    end
  end
end
