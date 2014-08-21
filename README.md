# Fifthgear
[![Build Status](https://travis-ci.org/WalkerAndCoBrandsInc/fifthgear.svg?branch=develop)](https://travis-ci.org/WalkerAndCoBrandsInc/fifthgear) [![Code Climate](https://codeclimate.com/github/WalkerAndCoBrandsInc/fifthgear/badges/gpa.svg)](https://codeclimate.com/github/WalkerAndCoBrandsInc/fifthgear) [![Test Coverage](https://codeclimate.com/github/WalkerAndCoBrandsInc/fifthgear/badges/coverage.svg)](https://codeclimate.com/github/WalkerAndCoBrandsInc/fifthgear)

Ruby gem for interfacing with [Fifthgear's](https://github.com/fifthgear/fifthgear-raw) api

## Installation

Add this line to your application's Gemfile:

    gem 'fifthgear'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fifthgear

## Usage

### Configuration
```ruby
Fifthgear.configure do |config|
  config.api_root = 'https://commerceservicestest.infifthgear.com'
  config.api_version = '/v2.0/CommerceServices.svc/Rest'
  config.username = 'foo'
  config.password = 'bar'
  config.company_id = 'big_time_biz_1234'
  config.content_type = 'application/json'
  config.debug = true
end
```

## Contributing

1. Fork it ( https://github.com/WalkerAndCoBrandsInc/fifthgear/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
