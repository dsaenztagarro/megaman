require 'json'

module Megaman
  class Request
    def initialize(vim_request)
      @vim_request = vim_request
    end

    def body
      vim_body = json_request[1]
      JSON.parse(vim_body)
    end

    def number
      json_request[0]
    end

    def constant_name
      body['constant_name']
    end

    private

    def json_request
      @json_request ||= JSON.parse(@vim_request)
    end
  end
end
