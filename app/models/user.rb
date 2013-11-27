class User < ActiveRecord::Base
  validates :provider, presence: true
  validates :uid, presence: true

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

  # def to_param
  #   self.nickname
  # end
end
