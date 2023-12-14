require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Load the first store (with id = 1) from the database and assign it to @store1
@store1 = Store.find(1)

# Load the second store from the database and assign it to @store2
@store2 = Store.find(2)

# Update the first store (@store1) instance in the database
@store1.name = "ze"
@store1.save