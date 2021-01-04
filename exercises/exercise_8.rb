require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

@store2.employees.create(first_name: "Squall", last_name: "Leonheart", hourly_rate: 60)

password = @store2.employees.find_by(first_name: "Squall")
puts password.password