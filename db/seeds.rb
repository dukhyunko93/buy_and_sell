# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Product.create(
    name: Faker::Commerce.product_name, 
    price:Faker::Commerce.price, 
    color: "GREEN", 
    img_url: Faker::LoremFlickr.colorized_image(size: "50x60", color: 'green', search_terms: ['shoe']), 
    condition: "good")
