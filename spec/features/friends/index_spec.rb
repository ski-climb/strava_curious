require 'rails_helper'

describe "Viewing a user's friends" do
  let(:strava_user) { build(:user, :strava) }
  scenario "shows a list of friends", :vcr => true do
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(strava_user)
    visit friends_path

    expect(page).to have_content("robbie_smith")
  end
end
