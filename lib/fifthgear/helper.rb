require 'chronic'
module Fifthgear
  module Helper
    def self.format_date(date=nil)
      date = Chronic.parse(date)
      sprintf('\/Date(%s%s)\/', date.strftime('%s').to_i*1000, date.strftime('%z'))
    end
  end
end
