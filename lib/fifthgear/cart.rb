module Fifthgear
  class Cart
    def self.submit(cart={})
      if Fifthgear.configuration.debug
        require 'json'
        File.open("/tmp/output-#{Time.now.to_i}.json","w") do |f|
          f.write({ "CompanyId" => Fifthgear.configuration.company_id, "Request" => cart}.to_json)
        end
      end
      conn = Fifthgear::Client.new
      conn.post "#{Fifthgear.configuration.api_version}/CartSubmit", { "CompanyId" => Fifthgear.configuration.company_id, "Request" => cart}
    end
  end
end
