# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Product.destroy_all
puts "Creating products..."
jacket = { name: "Vans Classic", description: "light classic jacket", price: 89.99 }
skater_jacket = { name: "Vans Skater Jacket", description: "Skater jacket", price: 49.99 }
shirt_jacket = { name: "Vans Shirt Jacket", description: "Shirt jacket", price: 69.99 }

puts "PRODUCTS"
[ jacket, skater_jacket, shirt_jacket ].each do |attributes|
  product = Product.create!(attributes)
  puts "Created #{product.name}"
end
puts "Finished"
