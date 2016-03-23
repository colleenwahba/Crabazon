# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# User.create(name: Faker::Hipster.name)

15.times {Product.create!(name: Faker::Beer.name, description: Faker::Hipster.sentence, price: Faker::Commerce.price, quantity: Faker::Number.between(1,20), product_image: Faker::Avatar.image, reseller_id: 1 )}
User.create!(username: 'tim', email: 'tim@tim.com', password: 'timtim', admin: true)
User.create!(username: 'tom', email: 'tom@tom.com', password: 'tomtom')

3.times {Category.create!(name: Faker::Beer.style)}

5.times {Product.create!(name: Faker::Beer.name, description: Faker::Hipster.sentence, price: Faker::Commerce.price, quantity: Faker::Number.between(1,20), product_image: Faker::Avatar.image, category_id: 1 )}
5.times {Product.create!(name: Faker::Beer.name, description: Faker::Hipster.sentence, price: Faker::Commerce.price, quantity: Faker::Number.between(1,20), product_image: Faker::Avatar.image, category_id: 2 )}
