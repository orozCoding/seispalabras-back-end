class TranslationsController < ApplicationController
  before_action :set_translation, only: %i[ show update destroy ]
  before_action :authorize_request, except: :top

  # GET /translations
  def index
    if @current_user
      @translations = Translation.all.where(user_id: @current_user.id)

      render json: @translations
    end
  end

  # GET /translations/1
  def show
    render json: @translation
  end

  # POST /translations
  def create
    @translation = Translation.new(translation_params)

    if @translation.save
      render json: @translation, status: :created, location: @translation
    else
      render json: @translation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /translations/1
  def update
    if @translation.update(translation_params)
      render json: @translation
    else
      render json: @translation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /translations/1
  def destroy
    @translation.destroy
  end

  # GET /top
  def top
    @users = []
    @top = Translation.all.group(:user_id).count
    @top.map do |user|
      username = User.find(user[0]).username
      score = user[1]
      @users << {user: username, score: score}
    end

    render json: @users
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_translation
      @translation = Translation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def translation_params
      params.require(:translation).permit(:word, :word_id, :user_id)
    end
end
