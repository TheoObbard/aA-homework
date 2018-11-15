class UserMailer < ApplicationMailer

  default from: 'admin@99cats.com'

  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.username, subject: 'Welcome to 99cats', from: 'everybody@appacademy.io')
  end

  #NOTE : email isn't required for signup so for testing used username. 

end
