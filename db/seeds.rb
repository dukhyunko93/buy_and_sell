# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 Product.destroy_all
# User.destroy_all


5.times do
  Product.create(
      seller: User.all.sample,
      name: Faker::Commerce.product_name,
      price:Faker::Commerce.price,
      color: "GREEN",
      img_url: Faker::LoremFlickr.colorized_image(size: "50x60", color: 'green', search_terms: ['shoe']),
      condition: "good", product_type: "SHOE")
end

5.times do
  Product.create(
      seller: User.all.sample,
      name: Faker::Commerce.product_name,
      price:Faker::Commerce.price,
      color: "red",
      img_url: Faker::LoremFlickr.colorized_image(size: "50x60", color: 'red', search_terms: ['shirt']),
      condition: "good", product_type: "shirt")
end

