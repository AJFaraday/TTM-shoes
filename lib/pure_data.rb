class PureData

  attr_accessor :port
  attr_accessor :connection

  def initialize(port)
    self.port = port

    sleep 1
    init_connection
  end

  def PureData.init_application
    init_message = ";"
    # TODO set this up to use config file
    [3939,3838].each_with_index do |port,index|
      init_message << "pd-ruby_interact_spawn.pd obj #{index *  20} #{index * 20} ruby_interact_arg #{port};"
    end
    system("
     pd-extended -open pd/ruby_interact_spawn.pd -send \"#{init_message}\" &
    ")
  end

  def init_connection
    begin
      self.connection = TCPSocket.open 'localhost', port
      debug "Connection established on localhost:#{port}"
    rescue Errno::ECONNREFUSED
      debug "Connection refused! Please ensure ruby_interact.pd is running in puredata and listening on port #{port}"
      abort
    rescue SocketError
      debug "Hostname and port are invalid. Please make sure they're a valid ip address and port number."
      abort
    end
  end

  def send_char(char)
    connection.puts Character.command(char, 10) # take transposition from config file
  end

end
