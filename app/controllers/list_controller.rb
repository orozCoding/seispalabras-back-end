require 'words'

class ListController < ApplicationController
  include Words

  def index
    render json: Words.list
  end
end