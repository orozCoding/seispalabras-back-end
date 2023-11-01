class UsersController < ApplicationController
  before_action :authorize_request, except: :create

  # GET /users
  def index
    return unless @current_user.role = 'admin'
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    render json: @current_user
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created
      UserMailer.with(user: @user).welcome_email.deliver_later
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @current_user.update(user_params)
      render json: @current_user
    else
      render json: @current_user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @current_user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = @current_user
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(
        :name, :role, :email,
        :password, :password_confirmation,
        :username
        )
    end
end
