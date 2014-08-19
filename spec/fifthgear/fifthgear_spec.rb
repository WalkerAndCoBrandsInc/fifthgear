require 'spec_helper'

module Fifthgear
 describe "#configure" do
   before do
     Fifthgear.configure do |config|
       config.api_root = 'https://commerceservicestest.infifthgear.com/v2.0/CommerceServices.svc/Rest'
       config.username = 'mork'
       config.password = 'foobarf'
       config.content_type = 'text/json'
       config.company_id = 'CompanyID'
     end
   end
 end
 describe "#reset" do
   before do
     Fifthgear.configure do |config|
       config.api_root = 'https://commerceservicestest.infifthgear.com/v2.0/CommerceServices.svc/Rest'
       config.username = 'mork'
       config.password = 'foobarf'
       config.content_type = 'text/json'
       config.company_id = 'CompanyID'
     end
   end

   it "resets the configuration" do
     Fifthgear.reset
     config = Fifthgear.configuration
     expect(config.username).to be(nil)
   end
 end
end
