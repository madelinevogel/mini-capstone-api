# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Product.destroy_all

product = Product.new(name: "Trampoline", price: 300, description: "10ft x 6ft rectangle outdoor trampoline")
product.save!

product = Product.new(name: "Tea Kettle", price: 34, description: "red tea kettle to heat water")
product.save!

product = Product.new(name: "Blanket", price: 40, description: "fuzzy white blanket")
product.save!
