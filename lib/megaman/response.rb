require 'json'

module Megaman
  class Response
    def initialize(request, message)
      @request = request
      @message = message
    end

    def to_s
      value.to_json
    end

    private

    def value
      [@request.number, @message.to_json]
    end
  end
end
