class PasswordResetsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:email])

    if @user.present?
      PasswordMailer.with(user: @user).reset.deliver_later
    end

    render json: "If an account with that email was found, we have sent a link to reset your password",
      status: :ok
  end

  def edit
    @user = User.find_signed!(params[:token], purpose: "password_reset")

    if @user.present?
      render json: @user, status: :ok
    else
      render json: "Invalid token", status: :not_acceptable
    end

    rescue ActiveSupport::MessageVerifier::InvalidSignature
    render json: "Invalid token", status: :not_acceptable
    
  end

  def update
    @user = User.find_signed!(params[:token], purpose: "password_reset")
    if @user.update(password_params)
      render json: "Password succesfully changed", status: :ok
    else
      render json: @user.errors, status: :unprocessable_entity
    end

  rescue ActiveSupport::MessageVerifier::InvalidSignature
  render json: "Invalid token", status: :not_acceptable
  end

  private

  def password_params
    params.require(:user).permit(:password, :password_confirmation)
  end

end