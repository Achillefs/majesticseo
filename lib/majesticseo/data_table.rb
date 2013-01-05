module Majesticseo
  class DataTable
    attr_accessor :name, :rows, :rows_count

    def self.create_from_xml xml
      table = DataTable.new
      table.headers = xml.attr("Headers")
      table.name = xml.attr("Name")
      table.rows_count = xml.attr("RowsCount").to_i
      table.rows = xml.search("Row").map do |r|
        row = Row.new
        data = r.content.scan(/(?=<!\|)\|(?=!\|)/)
        table.headers.each_index { |i| row.send("#{table.headers[i].underscore}=",data[i])} 
        row
      end
      table
    end

    def headers= headers
      if headers.is_a? String
        @headers = headers.split("|")
      else
        @headers = headers
      end
    end

    def headers
      @headers ? @headers : []
    end
  end
end

