require 'rails_helper'

describe StravaService do
  let(:token) { ENV["ACCESS_TOKEN"] }

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

      expect(raw_activity).to have_key :name
      expect(raw_activity).to have_key :distance
      expect(raw_activity).to have_key :type
      expect(raw_activity).to have_key :start_date_local

      expect(raw_activity[:name]).to be_a String
    end
  end
end
