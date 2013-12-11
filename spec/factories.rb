FactoryGirl.define do
  factory :user do
    provider	"twitter"
    uid 		"12345678"
    nickname	"foobar1"
    name		"F. Obar Baz"
    profile_url "@foobar1"
    # profile_url	{ |u| u.nickname.downcase }
    email		"foo@example.com"    
  end
end

# FactoryGirl.define do
#   factory :user do
#     provider "twitter"
#     sequence(:uid) { |n| "#{n}" }
#     sequence(:name) { |n| "Person_#{n}" }
#   end
# end
