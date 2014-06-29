class UserMailer < ActionMailer::Base
  default from: "notifications@art-povar.ru"

  def welcome_email(user)
  	@user = user
  	@url = "localhost:3000/mail"
  	mail(to: @user.email, subject: 'Welcome to ART GALLERY')
  end
end
