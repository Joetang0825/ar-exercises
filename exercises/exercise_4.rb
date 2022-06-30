require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
store_4 = Store.new do |s4|
  s4.name = "Surrey"
  s4.annual_revenue = 224000
  s4.mens_apparel = false
  s4.womens_apparel = true
end

store_4.save

store_5 = Store.new do |s5|
  s5.name = "Whistler"
  s5.annual_revenue = 1900000
  s5.mens_apparel = true
  s5.womens_apparel = false
end

store_5.save

store_6 = Store.new do |s6|
  s6.name = "Yaletown"
  s6.annual_revenue = 430000
  s6.mens_apparel = true
  s6.womens_apparel = true
end

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each do |s|
  puts "Men store #{s.name} has a revenue of #{s.annual_revenue}"
end 

@womens_stores = Store.where("annual_revenue > ?", 1000000).where(womens_apparel: true)
@womens_stores.each do |s|
  puts "Women store #{s.name} has a revenue of #{s.annual_revenue}"
end

# , "annual_revenue >": 1000000