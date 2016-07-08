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

  describe ".item_lookup" do
    it "should not be nil" do
      item = Fifthgear.item_lookup('testsku')

      expect(item).to_not eq(nil)
    end
  end

  describe ".cart_submit" do
    it "should not be nil" do
      order_obj = Fifthgear.cart_submit({})

      expect(order_obj).to_not eq(nil)
    end
  end

  describe ".item_inventory_bulk_lookup" do
    it "should not be nil" do
      item = Fifthgear.item_inventory_bulk_lookup('testsku')

      expect(item).to_not eq(nil)
    end
  end

  describe ".item_inventory_lookup" do
    it "should not be nil" do
      item = Fifthgear.item_inventory_lookup('testsku')

      expect(item).to_not eq(nil)
    end
  end

  describe ".item_personalization_data_export" do
    it "should not be nil" do
      item = Fifthgear.item_personalization_data_export('testsku')

      expect(item).to_not eq(nil)
    end
  end

  describe "order_status_bulk_lookup" do
    it "should not be nil" do
      item = Fifthgear.order_status_bulk_lookup('testsku')

      expect(item).to_not eq(nil)
    end
  end

  describe ".order_status_by_ref_number_lookup" do
    it "should not be nil" do
      item = Fifthgear.order_status_by_ref_number_lookup('testsku')

      expect(item).to_not eq(nil)
    end
  end
end
