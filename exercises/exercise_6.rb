require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Sean", last_name: "Oyler", hourly_rate: 75)
@store1.employees.create(first_name: "Savanna", last_name: "McDonald", hourly_rate: 70)
@store1.employees.create(first_name: "Amelia", last_name: "Heyward", hourly_rate: 60)

@store2.employees.create(first_name: "Cloud", last_name: "Strife", hourly_rate: 60)
@store2.employees.create(first_name: "Tifa", last_name: "Lockheart", hourly_rate: 50)
@store2.employees.create(first_name: "Barret", last_name: "Wallace", hourly_rate: 55)
@store2.employees.create(first_name: "Aerith", last_name: "Gainsborough", hourly_rate: 60)