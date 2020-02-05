class Api::LocationsController < ApplicationController

  def search
    unless params[:query].present?
      render_error('Query param is required.', :bad_request) && return
    end

    location = Location.search(params[:query])
    if location.nil?
      render_error('Location not found.', :not_found)
    else
      render_json(location.as_json)
    end
  end
end
