require 'spec_helper'

describe User do

  before { @user = User.new(name: "Example User", provider: "twitter",
    uid: "12345678", email: "user@example.com", nickname: "Example", profile_url: "@example" ) }

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:provider) }
  it { should respond_to(:uid) }
  it { should respond_to(:email) }
  it { should respond_to(:nickname) }
  it { should respond_to(:profile_url) }

  it { should be_valid }

  describe "when provider is not present" do
    before { @user.provider = " " }
    it { should_not be_valid }
  end

  describe "when uid is not present" do
    before { @user.uid = " " }
    it { should_not be_valid }
  end

  describe "when email format is invalid" do
    it "should be invalid" do
      addresses = %w[user@foo,com user_at_foo.org example.user@foo.
                     foo@bar_baz.com foo@bar+baz.com foo@bar..com]
      addresses.each do |invalid_address|
        @user.email = invalid_address
        expect(@user).not_to be_valid
      end
    end
  end

  describe "when email format is valid" do
    it "should be valid" do
      addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      addresses.each do |valid_address|
        @user.email = valid_address
        expect(@user).to be_valid
      end
    end
  end
  
end
