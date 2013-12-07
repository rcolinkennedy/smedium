class User < ActiveRecord::Base
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

  validates :provider, presence: true
  validates :uid, presence: true, uniqueness: true
  # validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }

  def self.from_omniauth(auth)
    where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
  end
  
  def self.create_from_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.nickname = auth["info"]["nickname"]
      user.name = auth["info"]["name"]
      user.profile_url = "@" + auth["info"]["nickname"].downcase
      end
   end

  def to_param
    profile_url
  end
end
