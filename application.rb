require 'socket'
require 'json'

Dir.glob(File.expand_path "../lib/**/*.rb", __FILE__).each { |file| load file }

require_relative 'lib/megaman'

port = 5000

server = TCPServer.open(port)
loop do
   socket = server.accept
   vim_request = socket.gets
   request = Megaman::Request.new(vim_request)
   response = Megaman::Handler.new.process(request)
   socket.write(response)
   socket.close
end