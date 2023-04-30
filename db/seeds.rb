# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Deleting categories'

Category.destroy_all

birth_control = Category.create(name: "Birth Control")
emergency_contraception = Category.create(name: "Emergency Contraception")
testing_kits = Category.create(name: "Testing Kits")
otc_products = Category.create(name: "OTC Products")

puts 'Categories created!'

puts 'Deleting Products'

Product.destroy_all

Product.create(name: "Product 1", quantity: 1, price: 90, instructions: "Take one before dinner", category: birth_control)
Product.create(name: "Product 2", quantity: 1, price: 19, instructions: "Take one before dinner", category: emergency_contraception)
Product.create(name: "Product 3", quantity: 1, price: 45, instructions: "Take one before dinner", category: testing_kits)
Product.create(name: "Product 4", quantity: 1, price: 29, instructions: "Take one before dinner", category: otc_products)

puts 'Products created!'
