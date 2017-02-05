require 'rails_helper'

describe "Viewing one of a users' activities" do
  context "a user has activities" do
    let!(:strava_user) { create(:user, :strava) }
    let!(:maximum_speed) { 29.97 }
    scenario "user sees one of their activities", :vcr => true do
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(strava_user)
      visit activities_path

      expect(page).to have_current_path(activities_path)
      click_on "Afternoon Ride"
      expect(page).to have_content "Distance"
      expect(page).to have_content "Duration"
      expect(page).to have_content "Elevation Gain"
      expect(page).to have_content "Average Speed"
      expect(page).to have_content "Max Speed"
      expect(page).to have_content "Average Heart Rate"
      expect(page).to have_content "Max Heart Rate"
      expect(page).to have_content maximum_speed
    end
  end
end
