require 'spec_helper'

module Fifthgear
  describe ItemPersonalizationData do
    describe "#get" do
      it "should return an item" do
        pending "Configuration isn't passing username and password to client."
        item = Fifthgear.item_personalization_data_export('testsku')
        expect(item).to_not eq(nil)
      end
    end
  end
end
