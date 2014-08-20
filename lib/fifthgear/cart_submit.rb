module Fifthgear
  class CartSubmit
    def self.post(cart={})
      conn = Fifthgear::Client.new
      conn.post "#{Fifthgear.configuration.api_version}/CartSubmit", { "CompanyId" => Fifthgear.configuration.company_id, "Request" => cart}
    end
  end
end
