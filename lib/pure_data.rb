class PureData

  attr_accessor :port
  attr_accessor :connection

  def initialize(port)
    self.port = port
 
    init_connection
  end

  def init_connection
    # TODO look in to launching Pd at this stage
    begin
      self.connection = TCPSocket.open 'localhost', port
      puts "Connection established on localhost:#{port}"
    rescue Errno::ECONNREFUSED
      puts "Connection refused! Please ensure ruby_interact.pd is running in puredata and listening on port #{port}"
      abort
    rescue SocketError
      puts "Hostname and port are invalid. Please make sure they're a valid ip address and port number."
      abort
    end
  end

  def send_char(char)
    connection.puts Character.command(char, 10) # take transposition from config file
  end

end
