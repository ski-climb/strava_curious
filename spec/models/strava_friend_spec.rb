require 'rails_helper'

describe StravaFriend do
  context "attributes" do
    it { is_expected.to respond_to(:id) }
    it { is_expected.to respond_to(:username) }
    it { is_expected.to respond_to(:city) }
    it { is_expected.to respond_to(:state) }
  end
end
