require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Employee 
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  validate :validate_associations
end

class Store
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
end

# @store2.employees.create(first_name: "Khurram2", last_name: "Virani2", hourly_rate: 1)
# @store2.save!

# employee1 = Employee.create(first_name: "Khurram2", last_name: "Virani2", hourly_rate: 200)
# employee1.save!

# store_4 = Store.new do |s4|
#   s4.name = "aaa"
#   s4.annual_revenue = 0
#   s4.mens_apparel = true
#   s4.womens_apparel = false
# end

# store_4.save!

name = gets.chomp
store_4 = Store.new do |s4|
  s4.name = name
end

store_4.save

if store_4.errors.any?
  store_4.errors.full_messages.each do |message|
    puts message
  end
end

