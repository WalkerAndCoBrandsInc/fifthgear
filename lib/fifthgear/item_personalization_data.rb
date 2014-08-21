require 'fifthgear/client'

module Fifthgear
  class ItemPersonalizationData
    def self.export(sku=nil)
      conn = Fifthgear::Client.new
      conn.post "#{Fifthgear.configuration.api_version}/ExportItemPersonalizationData", { "CompanyId" => Fifthgear.configuration.company_id, "Request" => sku}
    end
  end
end
