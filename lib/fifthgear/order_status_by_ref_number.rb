module Fifthgear
  class OrderStatusByRefNumber
    def self.get(orderRefNumber=nil)
      conn = Fifthgear::Client.new
      conn.post "#{Fifthgear.configuration.api_version}/OrderStatusLookupByRefNumber", { "CompanyId" => Fifthgear.configuration.company_id, "Request" => orderRefNumber}
    end
  end
end