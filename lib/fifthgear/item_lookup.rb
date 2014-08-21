require 'fifthgear/client'

module Fifthgear
  class ItemLookup
    def self.get(sku=nil)
      conn = Fifthgear::Client.new
      conn.post "#{Fifthgear.configuration.api_version}/ItemLookup", { "CompanyId" => Fifthgear.configuration.company_id, "Request" => sku}
    end
  end
end
