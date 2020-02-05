class ApplicationController < ActionController::API

  def render_json(json, status = 200)
    render json: json, status: status
  end

  def render_error(message, status = 400)
    render_json({ error: message }, status)
  end
end
