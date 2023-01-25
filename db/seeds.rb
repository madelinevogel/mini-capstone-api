# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Product.destroy_all

Product.create(name: "Trampoline", price: 300, description: "10ft x 6ft rectangle outdoor trampoline")

Product.create(name: "Tea Kettle", price: 34, description: "red tea kettle to heat water")

Product.create(name: "Blanket", price: 40, description: "fuzzy white blanket")

Supplier.create(name: "Nike", email: "nike@test.com", phone_number: "402-329-4545")

Supplier.create(name: "Adidas", email: "adidas@test.com", phone_number: "402-445-3333")

Supplier.create(name: "Lululemon", email: "lulu@test.com", phone_number: "402-320-9900")
