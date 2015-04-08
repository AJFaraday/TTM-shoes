class PureData

  def init_connection
    begin
      self.connection = TCPSocket.open hostname, port
      puts "Connection established on #{hostname}:#{port}"
    rescue Errno::ECONNREFUSED
      puts "Connection refused! Please ensure ruby_interact.pd is running in puredata and listening on port #{port}"
      abort
    rescue SocketError
      puts "Hostname and port are invalid. Please make sure they're a valid ip address and port number."
      abort
    end
  end

end
