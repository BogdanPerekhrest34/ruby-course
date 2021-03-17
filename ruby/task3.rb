require "byebug"
require "csv"

a = []
CSV.foreach("temperature.csv") do |row|
  a << row
end

p a