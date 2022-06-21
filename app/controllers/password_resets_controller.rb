class PasswordResetsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:email])

    p @user
    p @user.email

    if @user.present?
      PasswordMailer.with(user: @user).reset.deliver_later
    end

    render json: "If an account with that email was found, we have sent a link to reset your password",
      status: :ok
  end
end