module Helpers
  # Helper method to parse a response
  #
  # @return [Hash]
  def json
    JSON.parse(response.body).with_indifferent_access
  end

  def params_with_token(params = {})
    { token: Rails.application.credentials.api_token }.merge(params)
  end
end
