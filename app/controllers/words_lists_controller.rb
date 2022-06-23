class WordsListsController < ApplicationController
  before_action :authorize_request

  def index
    @list = WordList.where(user_id: @current_user.id).last

    render json: @list
  end

  def create
    @list = WordList.new(list_params)
    if @list.save
      render json: @list, status: :created
    else
      render json: @list.errors, status: :unprocessable_entity
    end
  end

  def update
    if @list.update(list_params)
      render json: @list, status: :ok
    else
      render json: @list.errors, status: :unprocessable_entity
    end
  end

  private

  def list_params
    par = params.permit(:list)
    par[:user_id] = @current_user.id
    par
  end
end
