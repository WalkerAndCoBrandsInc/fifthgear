require 'spec_helper'

module Fifthgear
  describe OrderStatusLookupByRefNumber do
    describe "#get" do
      it "should return an item" do
        pending "Configuration isn't passing username and password to client."
        item = Fifthgear.order_status_lookup_by_ref_number('testsku')
        expect(item).to_not eq(nil)
      end
    end
  end
end
