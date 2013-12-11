require 'spec_helper'

feature "Logged out user visits Profile page" do

  subject { page }
	
  let(:user) { FactoryGirl.create(:user) }

	before { visit profile_path(user) }

  it { should have_content("Profile") }
  it { should have_content(user.nickname) }

end

# Below is a bunch of Trial and Error


# describe "UsersController" do

#   describe "Profile page" do
#     let(:user) { FactoryGirl.create(:user) }
#     @user = User.new

#     before { visit profile_path(user) }
    
#     it "shows the public profile of a registered user " do    
#       it { should have_content(user.nickname) }
#     end

#   end
# end


    # it "shows the public profile of a registered user when logged out"
    #   before do
    #     let(:user) { FactoryGirl.create(:user) }
    #   end

    #   visit profile_path(@user)


  # before do
  #   @user = User.make(name: "Example User", provider: "twitter",
  #     uid: "12345678", email: "user@example.com",
  #     nickname: "Example", profile_url: "@example")
  #   # @current_user = @user
  # end

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
  # end

  # describe "signup page" do
  #   before { visit signup_path }

  #   it { should have_content('Sign up') }
  #   it { should have_title(full_title('Sign up')) }
  # end
# end
