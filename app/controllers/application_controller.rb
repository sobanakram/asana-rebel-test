class ApplicationController < ActionController::API

  before_action :authenticate_token

  def render_json(json, status = 200)
    render json: json, status: status
  end

  def render_error(message, status = 400)
    render_json({ error: message }, status)
  end

  private

  def authenticate_token
    unless params[:token] == Rails.application.credentials.api_token
      render_error('Not Authorized to perform this action.', :unauthorized)
    end
  end
end
