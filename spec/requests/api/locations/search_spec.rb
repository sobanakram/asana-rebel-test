require 'rails_helper'

RSpec.describe 'GET api/locations/search', type: :request do

  it "should return bad request without query param" do
    get api_locations_search_path
    expect(response).to have_http_status(:bad_request)
  end

  it "should return not found against unknown location" do
    get api_locations_search_path(query: 'This is not a location')
    expect(response).to have_http_status(:not_found)
  end

  it "should return location coordinates" do
    get api_locations_search_path(query: 'checkpoint charlie')
    expect(response).to have_http_status(:success)
    expect(json[:latitude]).to eq(52.5075075)
    expect(json[:longitude]).to eq(13.3903737)
  end

end
