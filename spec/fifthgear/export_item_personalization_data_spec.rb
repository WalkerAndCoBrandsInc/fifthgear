require 'spec_helper'

module Fifthgear
  describe ExportItemPersonalizationData do
    describe "#get" do
      it "should return an item" do
        pending "Configuration isn't passing username and password to client."
        item = Fifthgear.export_item_personalization_data('testsku')
        expect(item).to_not eq(nil)
      end
    end
  end
end
