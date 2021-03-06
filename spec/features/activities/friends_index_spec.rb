require 'rails_helper'

describe "Viewing a user's and their friends' activities" do
  context "a user and their friends have activities" do
    let(:strava_user) { build(:user, :strava) }
    let(:time_of_activity) { "12:31 PM - 20 January 2017" }
    scenario "user sees a list of their activities", :vcr => true do
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(strava_user)
      visit friends_activities_path

      expect(page).to have_current_path(friends_activities_path)
      expect(page).to have_content "My Friends' Activities"
      expect(page).to have_content "Morning Ride"
      expect(page).to have_content "Afternoon Ride"
      expect(page).to have_content "Distance"
      expect(page).to have_content "Activity"
      expect(page).to have_content "Date"
      expect(page).to have_content "BackcountrySki"
      expect(page).to have_content "Berthoud pass"
      expect(page).to have_content time_of_activity
    end
  end
end
