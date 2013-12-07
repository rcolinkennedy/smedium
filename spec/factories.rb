FactoryGirl.define do
  factory :user do
    provider	"socialnetwork"
    uid 		"12345678"
    nickname	"foobar1"
    name		"F. Obar Baz"
    profile_url "@foobar1"
    # profile_url	{ |u| u.nickname.downcase }
    email		"foo@example.com"    
  end
end
