require 'rails_helper'

describe "Viewing a users' activities" do
  context "a user has activities" do
    let!(:strava_user) { create(:user, :strava) }
    let!(:distance_in_meters) { 12904.9 }
    scenario "user sees a list of their activities", :vcr => true do
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(strava_user)
      visit activities_path

      expect(page).to have_current_path(activities_path)
      expect(page).to have_content "My Activities"
      expect(page).to have_content "Morning Ride"
      expect(page).to have_content "Afternoon Ride"
      expect(page).to have_content "Distance"
      expect(page).to have_content "Activity"
      expect(page).to have_content "Date"
      expect(page).to have_content distance_in_meters
    end
  end
end
