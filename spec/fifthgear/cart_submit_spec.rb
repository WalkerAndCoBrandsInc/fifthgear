require 'spec_helper'

module Fifthgear
  describe CartSubmit do
    describe "#post" do
      it "should return an order object" do
        pending "Configuration isn't passing username and password to client."
        order_obj = Fifthgear.cart_submit({})
        expect(order_obj).to_not eq(nil)
      end
    end
  end
end
