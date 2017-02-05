require 'rails_helper'

describe "Viewing a user's profile page" do
  context "a user has activities" do
    let!(:strava_user) { build(:user, :strava) }
    let!(:biggest_ride_title) { "Biggest Climb Ridden (elevation gained in feet)" }
    scenario "user sees lifetime stats", :vcr => true do
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(strava_user)
      visit profile_path

      expect(page).to have_current_path(profile_path)
      expect(page).to have_content "Ride"
      expect(page).to have_content "Run"
      expect(page).to have_content "Swim"
      expect(page).to have_content "Longest Ride"
      expect(page).to have_content "Total Distance"
      expect(page).to have_content "Total Moving Time"
      expect(page).to have_content biggest_ride_title
    end
  end
end
