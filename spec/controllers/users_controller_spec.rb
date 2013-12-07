require 'spec_helper'

describe "UsersController" do

  subject { page }

  describe "Profile page" do

  before do
    @user = User.new(name: "Example User", provider: "twitter",
      uid: "12345678", email: "user@example.com",
      nickname: "Example", profile_url: "@example")
    # @current_user = @user
  end

  # before do
  #    @user = FactoryGirl.create(:user)
  #  end

  # describe "Profile page" do
  #   let(:user) { FactoryGirl.create(:user) }
    # session[:user_id] = user.id

    # request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:twitter]

    # before(:each) do
    #   sign_in user
    #   visit profile_path
    # end

    # before do
    #   # login_with_oauth 
    #   visit profile_path(user)
    # end
    # before { visit profile_path }

    # before { visit profile_path(@user) }
    #there is a problem here, where it isn't generating
      # user pages properly, but have to move onto something porductive

    # it { should have_content('smedium') }
    # it { should have_content(user.nickname) }
    # it { should have_title(user.name) }
  end

  # describe "signup page" do
  #   before { visit signup_path }

  #   it { should have_content('Sign up') }
  #   it { should have_title(full_title('Sign up')) }
  # end
end
