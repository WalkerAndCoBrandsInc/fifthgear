require "fifthgear/version"
require "fifthgear/configuration"
require "fifthgear/client"
require "faraday"
require "faraday_middleware"

module Fifthgear
  class << self
    attr_writer :configuration
    def new
      Fifthgear::Client.new
    end
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.reset
    @configuration = Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
