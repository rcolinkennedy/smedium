class UserMailer < ActionMailer::Base
  default from: "smedium@rcolinkennedy.com"

  def email_confirm(user)
    @user = user
    mail :to => user.email, :subject => "Is this #{user.nickname}? Confirm your email"
  end

end
