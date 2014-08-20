require "faraday"
require "faraday_middleware"

require "fifthgear/version"
require "fifthgear/configuration"
require "fifthgear/client"
require "fifthgear/item_lookup"
require "fifthgear/item_inventory_lookup"
require "fifthgear/item_inventory_bulk_lookup"
require "fifthgear/export_item_personalization_data"
require "fifthgear/order_status_lookup_by_ref_number"
require "fifthgear/order_status_bulk_lookup"
require "fifthgear/cart_submit"

module Fifthgear
  class << self
    attr_writer :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.reset
    @configuration = Configuration.new
  end

  def self.configure
    yield(configuration)
  end

  def self.item_lookup(sku=nil)
    Fifthgear::ItemLookup.get(sku)
  end

  def self.item_inventory_lookup(sku=nil)
    Fifthgear::ItemInventoryLookup.get(sku)
  end

  def self.item_inventory_bulk_lookup(startRange=nil, endRange=nil)
    Fifthgear::ItemInventoryBulkLookup.get(startRange, endRange)
  end

  def self.export_item_personalization_data(sku=nil)
    Fifthgear::ExportItemPersonalizationData.get(sku)
  end

  def self.order_status_lookup_by_ref_number(orderRefNumber=nil)
    Fifthgear::OrderStatusLookupByRefNumber.get(orderRefNumber)
  end

  def self.order_status_bulk_lookup(fromDate=nil, toDate=nil, startRange=nil, endRange=nil)
    Fifthgear::OrderStatusBulkLookup.get(fromDate, toDate, startRange, endRange)
  end

  def self.cart_submit(cart={})
    Fifthgear::CartSubmit.post(cart)
  end

end
