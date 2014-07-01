class NotificationsMailer < ActionMailer::Base
  default from: "message@art-povar.ru"
  default :to => "spb.gurme@gmail.com"

  def new_message(message)
  	@message = message
  	mail(subject: "#{message.subject}")
  end
end
