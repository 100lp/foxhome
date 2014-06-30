class UserMailer < ActionMailer::Base
  default from: "noreply@gurme.ru"
  default :to => "spb.gurme@gmail.com"

  def new_message(message)
  	@message = message
  	mail(subject: "#{message.subject}")
  end
end
