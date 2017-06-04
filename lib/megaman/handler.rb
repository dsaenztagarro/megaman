require_relative 'commands/test_command'

module Megaman
  class Handler
    # @param [Megaman::Request]
    # @return [Megaman::Response]
    def process(request)
      command_klass = Kernel.const_get "Megaman::Commands::#{request.constant_name}Command"
      command = command_klass.new(request.body)
      command.run
      result = { status: 'success', message: 'megaman: received!' }
      Megaman::Response.new(request, result)
    end
  end
end
