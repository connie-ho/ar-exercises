require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
# require_relative './exercise_7'

employee = @store2.employees.create(first_name: "Connie", last_name: "Ho", hourly_rate: 40)
puts employee.password