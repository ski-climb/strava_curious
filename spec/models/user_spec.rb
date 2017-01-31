require 'rails_helper'

describe User do
  it { is_expected.to validate_presence_of(:uid) }
  it { is_expected.to validate_uniqueness_of(:uid) }
end

describe ".from_strava" do
  it "responds to .from_strava" do
    expect(User).to respond_to(:from_strava)
  end
end

describe "#name" do
  let!(:user) { create(:user) }

  context "user's first name is nil" do
    it "returns the username" do
      user.first_name = nil

      expect(user.name).to eq user.username
    end
  end

  context "user has no first name saved" do
    it "returns the username" do
      user.first_name = ""

      expect(user.name).to eq user.username
    end
  end

  context "user has a first name saved" do
    it "returns the user's first name" do
      expect(user.name).to eq user.first_name
    end
  end
end
