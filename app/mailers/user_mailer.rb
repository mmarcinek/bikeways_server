class UserMailer < ApplicationMailer
  default from: 'bikeways.io@gmail.com'

  def welcome_email(user)
    @user = user
    @url = 'http://bikeways.io/users/sign_in'
    mail(to: @user.email, subject: 'Welcome to Bikeways!')
  end
end
