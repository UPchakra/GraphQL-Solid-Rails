# frozen_string_literal: true

module ApiRspecUtils
  def api_response
    JSON.parse(response.body)
  end
end
