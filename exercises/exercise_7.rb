require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Employee Model 
class Employee < ActiveRecord::Base
    belongs_to :store
  
    validates :first_name, :last_name, :store, presence: true
    validates :hourly_rate, numericality: { only_integer: true, greater_than: 39, less_than: 201 }
  end

  # Store Model
  class Store < ActiveRecord::Base
    has_many :employees
  
    validates :name, length: { minimum: 3 }
    validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
    validate :must_carry_apparel
  
    private
  
    def must_carry_apparel
      unless mens_apparel || womens_apparel
        errors.add(:base, "Store must carry at least one of men's or women's apparel")
      end
    end
  end

  # Test Validations
  puts "Enter a store name:"
store_name = gets.chomp

new_store = Store.create(name: store_name, annual_revenue: -100) 

unless new_store.valid?
  puts "Errors: #{new_store.errors.full_messages.join(", ")}"
end

