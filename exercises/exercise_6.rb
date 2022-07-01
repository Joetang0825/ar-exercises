require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store
  has_many :employees
end

class Employee
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Jason", last_name: "Wang", hourly_rate: 50)
@store1.employees.create(first_name: "Janny", last_name: "Lee", hourly_rate: 40)
@store2.employees.create(first_name: "Judy", last_name: "Armstrong", hourly_rate: 100)
@store2.employees.create(first_name: "Joe", last_name: "Tang", hourly_rate: 110)
