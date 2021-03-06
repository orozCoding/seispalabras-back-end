class UserMailer < ApplicationMailer
  default "Message-ID"=>"#{Digest::SHA2.hexdigest(Time.now.to_i.to_s)}@orozcoding.dev"
  default from: email_address_with_name('notification@orozcoding.dev', 'Seis Palabras')

  def welcome_email
    @user = params[:user]
    @url  = 'https://seispalabras.xyz/login'
    mail(to: email_address_with_name(@user.email, @user.name),
    subject: 'Bienvenido a Seis Palabras')
  end
end
