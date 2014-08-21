require 'fifthgear/client'

module Fifthgear
  class ItemInventory
    def self.lookup(sku=nil)
      conn = Fifthgear::Client.new
      conn.post "#{Fifthgear.configuration.api_version}/ItemInventoryLookup", { "CompanyId" => Fifthgear.configuration.company_id, "Request" => sku}
    end
  end
end
