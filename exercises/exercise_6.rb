require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

class Store < ActiveRecord::Base
    has_many :employees
  end

  class Employee < ActiveRecord::Base
    belongs_to :store
  end

  # Add employees to @store1
@store1.employees.create(first_name: "Mark", last_name: "M", hourly_rate: 20)
@store1.employees.create(first_name: "Marly", last_name: "M", hourly_rate: 20)

# Add employees to @store2
@store2.employees.create(first_name: "Mina", last_name: "M", hourly_rate: 40)
@store2.employees.create(first_name: "Maryan", last_name: "M", hourly_rate: 30)