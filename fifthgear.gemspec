# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fifthgear/version'

Gem::Specification.new do |spec|
  spec.name          = "fifthgear"
  spec.version       = Fifthgear::VERSION
  spec.authors       = ["Tom Hanley"]
  spec.email         = ["tjhanleyx@gmail.com"]
  spec.summary       = %q{Gem for interfacing with Fifthgear's API.}
  spec.description   = %q{Create objects in Fifthgear's fulfillment system}
  spec.homepage      = "https://github.com/WalkerAndCoBrandsInc/fifthgear"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_dependency "faraday", "~> 0.9"
  spec.add_dependency "faraday_middleware", "~> 0.9"
  spec.add_dependency "chronic", "~> 0.10"
  spec.add_runtime_dependency "hashie", "~> 2.1"
end
