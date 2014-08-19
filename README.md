# Fifthgear
[![Build Status](https://travis-ci.org/WalkerAndCoBrandsInc/fifthgear.svg?branch=develop)](https://travis-ci.org/WalkerAndCoBrandsInc/fifthgear)

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
  config.api_root = 'https://commerceservicestest.infifthgear.com/v2.0/CommerceServices.svc/Rest'
  config.username = 'foo'
  config.password = 'bar'
  config.company_id = 'big_time_biz_1234'
  config.content_type = 'text/json'
end
```

## Contributing

1. Fork it ( https://github.com/WalkerAndCoBrandsInc/fifthgear/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
