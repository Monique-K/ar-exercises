require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :first_name, presence: true
  validates_associated :store
  validates :hourly_rate, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 40,
    less_than_or_equal_to: 200
  }
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Blag", last_name: "Blarg", hourly_rate: 600)
@store1.employees.create(first_name: "Yo", last_name: "Mama", hourly_rate: 40)
@store1.employees.create(first_name: "Steve", last_name: "Stevens", hourly_rate: 50)

@store2.employees.create(first_name: "F", last_name: "Name", hourly_rate: 60)
@store2.employees.create(first_name: "Jay", last_name: "Lastname", hourly_rate: 100)
@store2.employees.create(first_name: "Fake", last_name: "O'Fakey", hourly_rate: 45)




