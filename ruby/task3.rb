require "byebug"
require "csv"
require 'date'

class AvgTem
  Reading = Struct.new(:date, :temp)

  def initialize(file_name)
    @file_name = file_name
    @readings = []
    @temp_month = []
    @months = 1..12
  end

  def read
    CSV.foreach(@file_name, headers: true) do |row|
      @reading << Reading.new(Date.parse(row[0]).month, row[1].to_f)
    end
    @reading
  end

  def avg_temp
    @month.each do |month|
      @reading.select do |c|
        @temp_month << c.temp if c.date == month
      end
      avg = @temp_month.reduce(:+) / @temp_month.size.to_f
      p "Month: #{month}, Average (t): #{avg}"
      @temp_month.clear
    end
  end

end

a = AvgTem.new('temperature.csv')
a.read
a.avg_temp