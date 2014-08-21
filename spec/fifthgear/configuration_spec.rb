require 'spec_helper'

module Fifthgear
  describe Configuration do
    let(:api_root) {'https://commerceservicestest.infifthgear.com'}
    let(:username) {'rick'}
    let(:password) {'rubin'}
    let(:company_id) {'company123'}
    let(:content_type) {'application/json'}

    describe '#api_root' do
      it 'should default value' do
        expect(Configuration.new.api_root).to eq(api_root)
        expect(Configuration.new.content_type).to eq(content_type)
      end
    end
    describe '#api_root=' do
      it 'can set value' do
        config = Configuration.new
        config.api_root = api_root
        config.username = username
        config.password = password
        config.company_id = company_id

        expect(config.api_root).to eq(api_root)
        expect(config.username).to eq(username)
        expect(config.password).to eq(password)
        expect(config.company_id).to eq(company_id)
      end
    end
  end
end
