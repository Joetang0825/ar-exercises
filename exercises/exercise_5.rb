require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
sum = Store.sum (:annual_revenue)
puts "Total revenue from all stores is #{sum}"
average = sum/Store.count
puts "Average revenue from all stores is #{average}"

@num_stores = Store.where("annual_revenue >= ?", 1000000).count
puts "There are #{@num_stores} stores have revenue of 1 million or more."