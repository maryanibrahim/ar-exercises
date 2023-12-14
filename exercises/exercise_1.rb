require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Creating the stores
Store.create(name: 'Burnaby', annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
Store.create(name: 'Richmond', annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
Store.create(name: 'Gastown', annual_revenue: 190000, mens_apparel: true, womens_apparel: false)

# Outputting the number of stores
puts "The number of stores in the database: #{Store.count}."