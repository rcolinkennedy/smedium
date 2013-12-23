class User < ActiveRecord::Base

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

  validates :provider, presence: true
  validates :uid, presence: true, uniqueness: true
  validates :email, unless: "email.nil?", format: { with: VALID_EMAIL_REGEX }
  
  def self.from_omniauth(auth)
    where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
  end
  
  def self.create_from_omniauth(auth)
    before_save :create_profile_url

    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.nickname = auth["info"]["nickname"]
      user.name = auth["info"]["name"]
      user.image = auth['info']['image'].sub("_normal", "")
    end
  end

  def to_param
    profile_url
  end

  private
  
  def create_profile_url
    self.profile_url = "@" + nickname.downcase.strip.parameterize
  end

end

# (seomthing || "").function
# something.to_s.function
