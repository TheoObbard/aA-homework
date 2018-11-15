class UserMailer < ApplicationMailer

  default from: 'admin@99cats.com'

  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: user.email, subject: 'Welcome to 99cats', from: 'everybody@appacademy.io')
  end

end
