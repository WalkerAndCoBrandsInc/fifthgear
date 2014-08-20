require 'spec_helper'

module Fifthgear
  describe ItemInventoryBulkLookup do
    describe "#get" do
      it "should return details about item" do
        pending "Configuration isn't passing username and password to client."
        item = Fifthgear.item__inventory_bulk_lookup('testsku')
        expect(item).to_not eq(nil)
      end
    end
  end
end
