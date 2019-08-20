# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Cleaning database...'

Chef.destroy_all

User.destroy_all

puts 'Creating 20 random users...'

20.times do
  User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8)

  )
end

puts 'Created 20 random users.'

puts 'Creating 2 random chefs with raiting 3...'

2.times do
  new_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8)
  )
  new_chef = Chef.create!(
    name: new_user.name,
    specialty: Faker::Restaurant.type,
    rating: 2,
    description: Faker::Movies::StarWars.quote,
    user: new_user
  )
end
puts 'Created 2 random chefs with raiting 3.'

puts 'Creating 6 random chefs with raiting 4...'

6.times do
  new_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8)
  )
  new_chef = Chef.create!(
    name: new_user.name,
    specialty: Faker::Restaurant.type,
    rating: 4,
    description: Faker::Movies::StarWars.quote,
    user: new_user
  )
end

puts 'Created 6 random chefs with raiting 4.'

puts 'Creating 8 random chefs with raiting 5...'

8.times do
  new_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8)
  )
  new_chef = Chef.create!(
    name: new_user.name,
    specialty: Faker::Restaurant.type,
    rating: 5,
    description: Faker::Movies::StarWars.quote,
     user: new_user
  )
end

puts 'Created 8 random chefs with raiting 5.'



puts 'Finished!'
