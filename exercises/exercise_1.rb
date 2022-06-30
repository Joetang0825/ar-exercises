require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
store_1 = Store.new do |s1|
  s1.name = "Burnaby"
  s1.annual_revenue = 300000
  s1.mens_apparel = true
  s1.womens_apparel = true
end

store_1.save

store_2 = Store.new do |s2|
  s2.name = "Richmond"
  s2.annual_revenue = 1260000
  s2.mens_apparel = false
  s2.womens_apparel = true
end

store_2.save

store_3 = Store.new do |s3|
  s3.name = "Gastown"
  s3.annual_revenue = 190000
  s3.mens_apparel = true
  s3.womens_apparel = false
end

store_3.save

puts "There are #{Store.count} stores."