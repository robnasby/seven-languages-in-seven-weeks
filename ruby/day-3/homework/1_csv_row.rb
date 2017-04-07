module ActsAsCsv
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def acts_as_csv
      include InstanceMethods
    end
  end

  module InstanceMethods
    def initialize
      read
    end

    def read
      @csv_rows = []

      File.open("#{self.class.to_s.downcase}.csv") do |file|
        headers = file.gets.chomp.split(', ')

        file.each do |row|
          values = row.chomp.split(', ')
          @csv_rows << CsvRow.new(headers_values_to_hash(headers, values))
        end
      end
    end

    def headers_values_to_hash(headers, values)
      hash = {}
      headers.each_index do |i|
        hash[headers[i].to_sym] = values[i]
      end
      hash
    end

    def each(&block)
      @csv_rows.each(&block)
    end
  end

  class CsvRow
    def initialize(hash)
      @hash = hash
    end

    def method_missing(name, *args)
      @hash[name]
    end
  end
end

class Numbers
  include ActsAsCsv
  acts_as_csv
end

numbers = Numbers.new
numbers.each {|n| puts n.one }
