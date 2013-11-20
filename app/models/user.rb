class User < ActiveRecord::Base
  # attr_accessor :email

  def self.from_omniauth(auth)
    where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
    # redirect_to register_path
    # 
  end
  
  def self.create_from_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["nickname"]
    end
  #    redirect_to register_path
   end
end
  # def self.from_omniauth(auth)
  #   where(auth.slice("provider", "uid")).first || self.create_from_omniauth(auth)
  #   # user_for_registration(auth)
  # end
  
# def user_for_registration(auth)
#   session_user = auth
# end

  # def self.create_from_registration(auth)
  #   create! do |user|
  #     user.email = 
  #     user.provider = auth["provider"]
  #     user.uid = auth["uid"]
  #     user.nickname = auth["info"]["nickname"]
  #     user.name = auth["info"]["name"]
  #   end
  # end

#   def self.create_from_omniauth(auth)
#     create! do |user|
#       user.provider = auth["provider"]
#       user.uid = auth["uid"]
#       user.nickname = auth["info"]["nickname"]
#       user.name = auth["info"]["name"]
#     end
#   end
# end
