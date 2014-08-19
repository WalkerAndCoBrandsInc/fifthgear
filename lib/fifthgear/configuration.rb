require 'yaml'

module Fifthgear
  class Configuration
    attr_accessor :api_root, :username, :password, :content_type, :company_id

    def initialize
      defaults = load_defaults
      @api_root = defaults[:api_root]
      @content_type = defaults[:content_type]
    end

    private
    def load_defaults
      YAML.load_file(File.join(File.dirname(__FILE__),'..','config','defaults.yml'))
    end
  end
end
