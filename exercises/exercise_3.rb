require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Load the third store from the database and assign it to @store3
@store3 = Store.find(3)

# Using ActiveRecord's destroy method, delete the store from the database
@store3.destroy

# Verify that the store has been deleted by outputting the count
puts "The number of stores in the database: #{Store.count}."