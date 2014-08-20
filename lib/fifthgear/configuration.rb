require 'yaml'

module Fifthgear
  class Configuration
    attr_accessor :api_root, :api_version, :username, :password, :content_type, :company_id, :debug

    def initialize
      defaults = load_defaults
      @api_root = defaults[:api_root]
      @api_version = defaults[:api_version]
      @content_type = defaults[:content_type]
      @debug = false
    end

    private
    def load_defaults
      YAML.load_file(File.join(File.dirname(__FILE__),'..','config','defaults.yml'))
    end
  end
end
