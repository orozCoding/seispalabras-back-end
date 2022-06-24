require "json_web_token" #<= require the file


class AuthenticationController < ApplicationController
  before_action :authorize_request, except: :login
  include JsonWebToken #<= include the module

  # POST /auth/login
  def login
    @user = User.find_by_email(params[:email])
    if @user&.authenticate(params[:password])
      remember = params[:remember]
      token = JsonWebToken.encode(remember, user_id: @user.id)
      time = Time.now + 24.hours.to_i if remember != true
      time = Time.now + 30.days.to_i if remember == true
      render json: { token: token, exp: time.strftime("%m-%d-%Y %H:%M"),
                     name: @user.name,
                     email: @user.email,
                     username: @user.username  }, status: :ok
    else
      render json: { error: 'unauthorized' }, status: :unauthorized
    end
  end

  # name: @user.name instead of username: @user.username

  private

  def login_params
    params.permit(:email, :password, :remember)
  end
end