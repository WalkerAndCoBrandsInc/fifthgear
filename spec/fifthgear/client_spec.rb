require 'spec_helper'

module Fifthgear
  describe Client do
    describe "#new" do
      let(:client) {Fifthgear::Client.new}
      it "should return a Faraday Connection object" do
        expect(client.class).to eq(Faraday::Connection)
      end
      it "should have headers set based on config" do
        expect(client.headers["Username"]).to eq(Fifthgear.configuration.username)
        expect(client.headers["Password"]).to eq(Fifthgear.configuration.password)
      end
    end
  end
end
