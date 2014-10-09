module Fifthgear
  class Cart
    def self.submit(cart={})
      conn = Fifthgear::Client.new
      conn.post "#{Fifthgear.configuration.api_version}/CartSubmit", { "CompanyId" => Fifthgear.configuration.company_id, "Request" => cart}
    end
  end
end
