class TranslationsController < ApplicationController
  before_action :authorize_request, except: :top

  # GET /translations
  def index
    if @current_user
      @translations = @current_user.translated_words

      render json: @translations
    end
  end

  # POST /translations
  def create
    @translation = @current_user.translations.new(translation_params)

    if @translation.save
      render json: @translation, status: :created
    else
      render json: @translation.errors, status: :unprocessable_entity
    end
  end

  # GET /top
  def top
    @top_users = User.joins(:translations).group(:id).order('COUNT(translations.id) DESC').limit(10)
    render json: @top_users
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def find_translation
      @translation = Translation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def translation_params
      params.require(:translation).permit(:used_word, :word_id)
    end
end
