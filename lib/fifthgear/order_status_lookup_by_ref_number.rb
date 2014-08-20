module Fifthgear
  class OrderStatusLookupByRefNumber
    def self.get(orderRefNumber=nil)
      conn = Fifthgear::Client.new
      conn.get "#{Fifthgear.configuration.api_version}/OrderStatusLookupByRefNumber", { "CompanyId" => Fifthgear.configuration.company_id, "Request" => orderRefNumber}
    end
  end
end
