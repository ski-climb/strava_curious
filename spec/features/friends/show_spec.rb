require 'rails_helper'

describe "Viewing one of a user's friends" do
  let(:strava_user) { build(:user, :strava) }
  scenario "shows one friend", :vcr => true do
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(strava_user)
    visit friends_path
    click_on "robbie_smith"

    expect(page).to have_content("robbie_smith")
    expect(page).to have_content("Denver")
    expect(page).to have_content("CO")
  end
end
