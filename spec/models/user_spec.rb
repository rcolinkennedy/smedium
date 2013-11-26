require 'spec_helper'

describe User do

  before { @user = User.new(name: "Example User", provider: "twitter",
    uid: "12345678", email: "user@example.com", nickname: "Example" ) }

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:provider) }
  it { should respond_to(:uid) }
  it {should respond_to(:email) }
  it {should respond_to(:nickname)}

  describe "when provider is not present" do
    before { @user.provider = " " }
    it { should_not be_valid }
  end

  describe "when uid is not present" do
    before { @user.uid = " " }
    it { should_not be_valid }
  end
end
