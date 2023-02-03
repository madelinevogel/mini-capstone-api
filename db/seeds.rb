# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Product.destroy_all
Supplier.destroy_all

supplier1 = Supplier.create(name: "Nike", email: "nike@test.com", phone_number: "402-329-4545")
supplier2 = Supplier.create(name: "Adidas", email: "adidas@test.com", phone_number: "402-445-3333")
supplier3 = Supplier.create(name: "Lululemon", email: "lulu@test.com", phone_number: "402-320-9900")

product = Product.create(name: "Trampoline", price: 300, description: "10ft x 6ft rectangle outdoor trampoline", inventory: 6, supplier_id: supplier1.id)
Image.create(url: "https://secure.img1-cg.wfcdn.com/im/16324586/resize-h445%5Ecompr-r85/2264/226451668/14%27+Round+Trampoline+with+Safety+Enclosure.jpg", product_id: product.id)
Image.create(url: "https://cdn.shopify.com/s/files/1/0003/7715/9724/products/jumpflex_trampoline_spring_pad_safety_mat_d5d22863-57c2-487b-bd4e-f3b130649ce3_2000x.jpg?v=1661209118", product_id: product.id)

product = Product.create(name: "Tea Kettle", price: 34, description: "red tea kettle to heat water", inventory: 6, supplier_id: supplier1.id)
Image.create(url: "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1603801133-de08549b-7aea-4bd5-82e6-50d61ed119ee.488c4742088e4efe1f275004d7f5ac81.jpg", product_id: product.id)
Image.create(url: "https://i5.walmartimages.com/asr/d9f4f13e-8b40-4f50-9210-9b973a2c50eb.16ba030832409610e403efb48b97d9d2.jpeg", product_id: product.id)

product = Product.create(name: "Blanket", price: 40, description: "fuzzy white blanket", inventory: 6, supplier_id: supplier3.id)
Image.create(url: "https://cdni.llbean.net/is/image/wim/513008_44281_41?hei=1092&wid=950&resMode=sharp2&defaultImage=llbprod/A0211793_2", product_id: product.id)
Image.create(url: "https://cdni.llbean.net/is/image/wim/513008_0_45?hei=1092&wid=950&resMode=sharp2&defaultImage=llbprod/A0211793_2", product_id: product.id)
