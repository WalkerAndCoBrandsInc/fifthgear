require 'fifthgear/client'

module Fifthgear
  class OrderStatusBulk
    def self.lookup(fromDate=nil, toDate=nil, startRange=nil, endRange=nil)
      conn = Fifthgear::Client.new
      conn.post "#{Fifthgear.configuration.api_version}/OrderStatusBulkLookup", { "CompanyId" => Fifthgear.configuration.company_id,
                                                                                 "Request" => { "FromDate" => fromDate,
                                                                                                "ToDate" => toDate,
                                                                                                "StartRange" => startRange,
                                                                                                "EndRange" => endRange }
                                                                                }
    end
  end
end
