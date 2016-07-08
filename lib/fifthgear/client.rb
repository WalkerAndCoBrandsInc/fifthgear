require 'fifthgear'
module Fifthgear
  class Client
    def self.new
      Faraday.new(:url => Fifthgear.configuration.api_root ) do |faraday|
        # middleware
        faraday.use FaradayMiddleware::FollowRedirects
        faraday.use FaradayMiddleware::EncodeJson
        # request defs
        faraday.use Faraday::Request::BasicAuthentication, Fifthgear.configuration.username, Fifthgear.configuration.password
        faraday.use Faraday::Request::UrlEncoded
        # response defs
        faraday.use Faraday::Response::ParseJson
        faraday.use Faraday::Response::Mashify
        faraday.use Faraday::Response::RaiseError if Fifthgear.configuration.raise_errors
        faraday.response :logger if Fifthgear.configuration.debug

        faraday.headers['Content-Type'] = Fifthgear.configuration.content_type
        faraday.adapter ::Faraday.default_adapter
      end
    end
  end
end
