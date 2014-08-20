require 'fifthgear'
module Fifthgear
  class Client
    def self.new
      Faraday.new(:url => Fifthgear.configuration.api_root ) do |faraday|
        faraday.use FaradayMiddleware::FollowRedirects
        faraday.request  :url_encoded
        faraday.response :logger if Fifthgear.configuration.debug
        faraday.adapter  ::Faraday.default_adapter
        faraday.headers['Content-Type'] = Fifthgear.configuration.content_type
        faraday.headers['Username'] = Fifthgear.configuration.username
        faraday.headers['Password'] = Fifthgear.configuration.password
      end
    end
  end
end
