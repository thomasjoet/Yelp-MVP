Restaurant.destroy_all

5.times do
 restaurant = Restaurant.new(
   name: Faker::Company.name,
   address: Faker::Address.street_address,
   phone_number: Faker::PhoneNumber.phone_number,
   category: "french",
   stars: Faker::Number.between(0,5)
   )
 restaurant.save

 3.times do
   review = Review.new(
     restaurant_id: restaurant.id,
     content: Faker::Lorem.sentence(3),
     rating: Faker::Number.between(0,5)
   )
   review.save
  end

end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

