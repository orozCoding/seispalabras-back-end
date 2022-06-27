class SessionsController < ApplicationController
  before_action :authorize_request

  def index
    @user = User.find(@current_user.id)

    render json: @user
  end
end