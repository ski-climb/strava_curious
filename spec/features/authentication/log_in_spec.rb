require 'rails_helper'

describe "Successful login" do
  let(:date_of_ride) { "2017-01-31T07:45:34Z" }
  let(:distance_in_meters) { 12904.9 }

  context "given the user does not exist but has a Strava account" do
    scenario "a new user signs in", :vcr => true do
      Capybara.current_driver = :mechanize
      expect(User.count).to eq 0

      visit root_path
      click_on "Log in with Strava"
      expect(page).to have_current_path("/login")

      fill_in "email", with: ENV["STRAVA_EMAIL"]
      fill_in "password", with: ENV["STRAVA_PASSWORD"]
      click_button "Log In"

      expect(page).to have_current_path(activities_path)
      expect(page).to have_content "Morning Ride"
      expect(page).to have_content distance_in_meters
      expect(page).to have_content date_of_ride
    end
  end

  context "given the user exists and has a Strava account" do
    let!(:strava_user) { create(:user, :strava) }

    scenario "an existing user signs in", :vcr => true do
      Capybara.current_driver = :mechanize
      visit root_path
      click_on "Log in with Strava"
      expect(page).to have_current_path("/login")

      fill_in "email", with: ENV["STRAVA_EMAIL"]
      fill_in "password", with: ENV["STRAVA_PASSWORD"]
      click_button "Log In"

      expect(page).to have_current_path(activities_path)
      expect(page).to have_content "Morning Ride"
      expect(page).to have_content distance_in_meters
      expect(page).to have_content date_of_ride
    end
  end
end
