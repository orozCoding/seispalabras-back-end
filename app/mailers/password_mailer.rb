require 'digest/sha2'

class PasswordMailer < ApplicationMailer
  default "Message-ID"=>"#{Digest::SHA2.hexdigest(Time.now.to_i.to_s)}@orozcoding.dev"
  default "Subject"=>"Reset your Password in Seis Palabras"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.password_mailer.reset.subject
  #
  def reset
    user = params[:user]
    
    @token = user.signed_id(purpose: "password_reset", expires_in: 7.days)

    @url = "https://seispalabras.xyz/reset/#{@token}"

    mail to: user.email, subject: "Reset your password at SeisPalabras.xyz"
  end
end
