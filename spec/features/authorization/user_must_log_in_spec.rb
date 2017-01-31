require 'rails_helper'

describe "user who is not logged in" do
  scenario "user can see home page" do
    visit root_path

    expect(page).to have_content "Welcome to Strava-Curious"
    expect(page).to have_content(:link_or_button, "Log in with Strava")
  end

  scenario "user gets redirected to home page when they try to visit any other page" do
    visit dashboard_path

    expect(page).to have_current_path root_path
  end

  scenario "user gets redirected to home page when they try to visit a page that does not exist" do
    visit "/does_not_exist"

    expect(page).to have_current_path root_path
  end
end
