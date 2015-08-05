# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all

Product.create(name: 'Flowers Card', description: 'A aquarela hand-painted card.', image_url: 'cartao1.png',  price: 7.0)
Product.create(name: 'Stripes Card', description: 'A fun golden striped card.', image_url: 'cartao2.png',  price: 5.0)
Product.create(name: 'Be Mine Card', description: 'A romantic card to present a loved one.', image_url: 'cartao3.png',  price: 4.5)
Product.create(name: 'Triangles Card', description: 'A fun, embellished option.', image_url: 'cartao4.png',  price: 7.5)

OrderStatus.delete_all

OrderStatus.create(id: 1, name: "In Progress")
OrderStatus.create(id: 2, name: "Placed")
OrderStatus.create(id: 3, name: "Shipped")
OrderStatus.create(id: 4, name: "Cancelled")