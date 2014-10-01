require "faraday"
require "faraday_middleware"

require "fifthgear/version"
require "fifthgear/configuration"
require "fifthgear/client"
require "fifthgear/item"
require "fifthgear/item_inventory"
require "fifthgear/item_inventory_bulk"
require "fifthgear/item_personalization_data"
require "fifthgear/order_status_by_ref_number"
require "fifthgear/order_status_bulk"
require "fifthgear/cart"
require "fifthgear/helper"

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
    Fifthgear::Item.lookup(sku)
  end

  def self.item_inventory_lookup(sku=nil)
    Fifthgear::ItemInventory.lookup(sku)
  end

  def self.item_inventory_bulk_lookup(startRange=nil, endRange=nil)
    Fifthgear::ItemInventoryBulk.lookup(startRange, endRange)
  end

  def self.item_personalization_data_export(sku=nil)
    Fifthgear::ItemPersonalizationData.export(sku)
  end

  def self.order_status_by_ref_number(orderRefNumber=nil)
    Fifthgear::OrderStatusLookupByRefNumber.lookup(orderRefNumber)
  end

  def self.order_status_bulk_lookup(fromDate=nil, toDate=nil, startRange=nil, endRange=nil)
    Fifthgear::OrderStatusBulkLookup.lookup(fromDate, toDate, startRange, endRange)
  end

  def self.cart_submit(cart={})
    Fifthgear::Cart.submit(cart)
  end

end
