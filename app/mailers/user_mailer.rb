class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def registration_email_confirm(user)
    # Update the function to use Current User?
    @user = user
    mail :to => user.email, :subject => "Is this #{user.nickname}? Confirm your email"
  end

end
