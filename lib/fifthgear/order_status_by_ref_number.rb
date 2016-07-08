module Fifthgear
  class OrderStatusByRefNumber
    def self.lookup(orderRefNumber=nil)
      conn = Fifthgear::Client.new
      conn.post "#{Fifthgear.configuration.api_version}/OrderStatusLookupByRefNumber", { "CompanyId" => Fifthgear.configuration.company_id, "Request" => orderRefNumber}
    end

    def self.get(orderRefNumber=nil)
      warn "Fifthgear::OrderStatusByRefNumber.get is deprecated, use .lookup"
      lookup(orderRefNumber)
    end
  end
end
