require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Create new stores
Store.create(name: 'Surrey', annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: 'Whistler', annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: 'Yaletown', annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

# Fetch stores that carry men's apparel
@mens_stores = Store.where(mens_apparel: true)

# Loop through each of these stores and output their name and annual revenue
@mens_stores.each do |store|
  puts "Name: #{store.name}, Annual Revenue: #{store.annual_revenue}"
end

# Fetch stores that carry women's apparel and have less than $1M in annual revenue
@womens_stores = Store.where("womens_apparel = ? AND annual_revenue < ?", true, 1000000)

# Loop through each store in @womens_stores and output their name and annual revenue
@womens_stores.each do |store|
    puts "Name: #{store.name}, Annual Revenue: #{store.annual_revenue}"
  end