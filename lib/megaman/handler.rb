module Megaman
  class Handler
    # @param [Megaman::Request]
    def process(request)
      puts "* filename: #{request.body['filename']}"
      result = { status: 'success', message: 'megaman: received!' }
      Megaman::Response.new(request, result)
    end
  end
end
