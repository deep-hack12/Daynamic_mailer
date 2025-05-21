class UserMailer < ApplicationMailer
    default from: "deepeshsethi2004@gmail.com"

  def sign_in_email(user)
    @user = user
    mail(to: @user.email, subject: "Welcome to My Awesome Site")
  end
end
