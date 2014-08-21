require 'fifthgear/client'
module Fifthgear
  class ItemInventoryBulk
    def self.lookup(startRange=nil, endRange=nil)
      conn = Fifthgear::Client.new
      conn.post "#{Fifthgear.configuration.api_version}/ItemInventoryBulkLookup", { "CompanyId" => Fifthgear.configuration.company_id,
                                                                                   "Request" => {"startRange" => startRange, "endRange" => endRange}}
    end
  end
end
