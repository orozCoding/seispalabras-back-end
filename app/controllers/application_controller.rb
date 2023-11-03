require "json_web_token" 

class ApplicationController < ActionController::API
  include JsonWebToken 
  before_action :include_default_response_headers


  def not_found
    render json: { error: 'not_found' }
  end

  def authorize_request
    header = request.headers['Authorization']
    header = header.split(' ').last if header
    begin
      @decoded = JsonWebToken.decode(header)
      @current_user = User.find(@decoded[:user_id])
    rescue ActiveRecord::RecordNotFound => e
      render json: { errors: e.message }, status: :unauthorized
    rescue JWT::DecodeError => e
      render json: { errors: e.message }, status: :unauthorized
    end
  end

  def include_default_response_headers
    return unless response && response.headers
    response.set_header('Access-Control-Allow-Origin', '*')
  end
end
