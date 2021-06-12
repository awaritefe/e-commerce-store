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
jacket = {
  name: "Vans Classic",
  description: "Classic Jacket Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu erat non dui pulvinar semper eu ut est. Nullam laoreet tellus vestibulum facilisis fermentum. Nam nec ipsum et ipsum consectetur commodo sit amet sit amet lectus. Proin finibus vel orci ut vulputate. Cras porta, justo nec tincidunt dapibus, mi dolor feugiat nulla, ac tristique tellus mi non mauris.",
  price: 89.99
}
skater_jacket = {
  name: "Vans Skater Jacket",
  description: "Skater jacket Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu erat non dui pulvinar semper eu ut est. Nullam laoreet tellus vestibulum facilisis fermentum. Nam nec ipsum et ipsum consectetur commodo sit amet sit amet lectus. Proin finibus vel orci ut vulputate. Cras porta, justo nec tincidunt dapibus, mi dolor feugiat nulla, ac tristique tellus mi non mauris.",
  price: 49.99
}
shirt_jacket = {
  name: "Vans Shirt Jacket",
  description: "Shirt Jacket Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu erat non dui pulvinar semper eu ut est. Nullam laoreet tellus vestibulum facilisis fermentum. Nam nec ipsum et ipsum consectetur commodo sit amet sit amet lectus. Proin finibus vel orci ut vulputate. Cras porta, justo nec tincidunt dapibus, mi dolor feugiat nulla, ac tristique tellus mi non mauris.",
  price: 69.99
}

puts "Creating categories..."
mens = { name: "Mens"}
womens = { name: "Womens"}
accessories = { name: "Accessories" }
sale = { name: "Sale" }

puts "CATEGORIES"
[ mens, womens, accessories, sale ].each do |attributes|
  category = Category.create!(attributes)
  puts "Created #{category.name}"
end

puts "PRODUCTS"
[ jacket, skater_jacket, shirt_jacket ].each do |attributes|
  product = Product.create!(attributes)
  puts "Created #{product.name}"
end

puts "TEST ADMIN"
admin = Admin.create!({ email: "test@test.com", password: "Qwerty1!" })
puts "Finished"
