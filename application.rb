require 'rubygems'
require 'shoes'
require 'socket'

Dir["./lib/*.rb"].each {|file| require file }

PureData.init_application
