require 'socket'
streamSock = TCPSocket.new( "127.0.0.1", 5000)
streamSock.send( "Hello\n", 0)
str = streamSock.recv( 100 )
print str
streamSock.close
