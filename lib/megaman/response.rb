require 'json'

module Megaman
  class Response
    def initialize(request, response_body)
      @request = request
      @response_body = response_body
    end

    def to_s
      value.to_json
    end

    private

    def value
      [@request.number, @response_body.to_json]
    end
  end
end
