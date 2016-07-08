require 'spec_helper'

module Fifthgear
  describe Configuration do
    let(:api_root) {'https://commerceservicestest.infifthgear.com'}
    let(:username) {'rick'}
    let(:password) {'rubin'}
    let(:company_id) {'company123'}
    let(:content_type) {'application/json'}
    let(:raise_errors) { true }
    let(:timeout) { 5 }

    it 'has default values' do
      expect(Configuration.new.api_root).to eq(api_root)
      expect(Configuration.new.content_type).to eq(content_type)
      expect(Configuration.new.raise_errors).to eq(false)
    end

    it 'can set values' do
      config = Configuration.new
      config.api_root = api_root
      config.username = username
      config.password = password
      config.company_id = company_id
      config.raise_errors = raise_errors
      config.timeout = timeout
      config.open_timeout = timeout

      expect(config.api_root).to eq(api_root)
      expect(config.username).to eq(username)
      expect(config.password).to eq(password)
      expect(config.company_id).to eq(company_id)
      expect(config.raise_errors).to eq(raise_errors)
      expect(config.timeout).to eq(timeout)
      expect(config.open_timeout).to eq(timeout)
    end
  end
end
