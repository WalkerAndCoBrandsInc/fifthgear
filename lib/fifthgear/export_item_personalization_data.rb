require 'fifthgear/client'

module Fifthgear
  class ExportItemPersonalizationData
    def self.get(sku=nil)
      conn = Fifthgear::Client.new
      conn.get "#{Fifthgear.configuration.api_version}/ExportItemPersonalizationData", { "CompanyId" => Fifthgear.configuration.company_id, "Request" => sku}
    end
  end
end
