require 'fifthgear/client'

module Fifthgear
  class ItemInventoryLookup
    def self.get(sku=nil)
      conn = Fifthgear::Client.new
      conn.post "#{Fifthgear.configuration.api_version}/ItemInventoryLookup", { "CompanyId" => Fifthgear.configuration.company_id, "Request" => sku}
    end
  end
end
