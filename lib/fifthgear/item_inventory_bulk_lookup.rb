require 'fifthgear/client'
module Fifthgear
  class ItemInventoryBulkLookup
    def self.get(startRange=nil, endRange=nil)
      conn = Fifthgear::Client.new
      conn.get "#{Fifthgear.configuration.api_version}/ItemInventoryBulkLookup", { "CompanyId" => Fifthgear.configuration.company_id,
                                                                                   "Request" => {"startRange" => startRange, "endRange" => endRange}}
    end
  end
end
