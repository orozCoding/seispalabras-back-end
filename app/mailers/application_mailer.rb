class ApplicationMailer < ActionMailer::Base
  default from: email_address_with_name('notification@orozcoding.dev', 'Seis Palabras')
  layout "mailer"
end
