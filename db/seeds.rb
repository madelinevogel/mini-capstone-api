# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
supplier1 = Supplier.create(name: "Nike", email: "nike@test.com", phone_number: "402-329-4545")
supplier2 = Supplier.create(name: "Adidas", email: "adidas@test.com", phone_number: "402-445-3333")
supplier3 = Supplier.create(name: "Lululemon", email: "lulu@test.com", phone_number: "402-320-9900")

product = Product.create(name: "Trampoline", price: 300, description: "10ft x 6ft rectangle outdoor trampoline", inventory: 6, supplier_id: supplier1.id)
Image.create(url: "https://secure.img1-cg.wfcdn.com/im/16324586/resize-h445%5Ecompr-r85/2264/226451668/14%27+Round+Trampoline+with+Safety+Enclosure.jpg", product_id: product.id)
Image.create(url: "https://cdn.shopify.com/s/files/1/0003/7715/9724/products/jumpflex_trampoline_spring_pad_safety_mat_d5d22863-57c2-487b-bd4e-f3b130649ce3_2000x.jpg?v=1661209118", product_id: product.id)

product = Product.create(name: "Tea Kettle", price: 34, description: "red tea kettle to heat water", inventory: 6, supplier_id: supplier1.id)
Image.create(url: "https://cdn.shopify.com/s/files/1/2643/3792/products/Fellow_stovetop-kettle-steeped-coffee-02-nb_9e3b47db-3f8a-439f-aa84-8ce97dce7b1e_5000x.jpg?v=1515025354", product_id: product.id)
Image.create(url: "https://m.media-amazon.com/images/I/615rwte88UL.jpg", product_id: product.id)

product = Product.create(name: "Blanket", price: 40, description: "fuzzy white blanket", inventory: 6, supplier_id: supplier3.id)
Image.create(url: "https://cdni.llbean.net/is/image/wim/513008_44281_41?hei=1092&wid=950&resMode=sharp2&defaultImage=llbprod/A0211793_2", product_id: product.id)
Image.create(url: "https://cdni.llbean.net/is/image/wim/513008_0_45?hei=1092&wid=950&resMode=sharp2&defaultImage=llbprod/A0211793_2", product_id: product.id)
