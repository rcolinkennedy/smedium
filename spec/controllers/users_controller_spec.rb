require 'spec_helper'

describe UsersController do
  let(:user) { FactoryGirl.create(:user) }
    # @user = User.new
  describe "GET profile_url" do
    it "successfully renders the Profile page" do
      # Visit works, but not GET
      # get profile_path(user)
      visit profile_path(user)
      expect(response).to be_successful
    end
  end
end
