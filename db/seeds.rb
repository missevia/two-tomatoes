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
    image: "https://thispersondoesnotexist.com",
    password: Faker::Internet.password(min_length: 8)

  )
end

puts 'Created 20 random users.'

puts 'Creating 2 random chefs with raiting 3...'

first_new_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://images.unsplash.com/photo-1559575003-fb4ee38a747d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60"
  )
Chef.create!(
    name: first_new_user.name,
    specialty: Faker::Restaurant.type,
    rating: 3,
    description: Faker::Movies::StarWars.quote,
    user: first_new_user
  )

second_new_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://images.unsplash.com/photo-1543965170-e3d16958f280?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
  )
Chef.create!(
    name: second_new_user.name,
    specialty: Faker::Restaurant.type,
    rating: 3,
    description: Faker::Movies::StarWars.quote,
    user: second_new_user
  )

puts 'Created 2 random chefs with raiting 3.'


puts 'Creating 6 random chefs with raiting 4...'

third_new_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://images.unsplash.com/photo-1558549900-c11cb6293fb6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
  )
Chef.create!(
    name: third_new_user.name,
    specialty: Faker::Restaurant.type,
    rating: 4,
    description: Faker::Movies::StarWars.quote,
    user: third_new_user
  )

fourth_new_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://images.unsplash.com/photo-1548612621-77df2f2c5246?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
  )
Chef.create!(
    name: fourth_new_user.name,
    specialty: Faker::Restaurant.type,
    rating: 4,
    description: Faker::Movies::StarWars.quote,
    user: fourth_new_user
  )

fifth_new_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://images.unsplash.com/photo-1543716627-839b54c40519?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
  )
Chef.create!(
    name: fifth_new_user.name,
    specialty: Faker::Restaurant.type,
    rating: 4,
    description: Faker::Movies::StarWars.quote,
    user: fifth_new_user
  )

sixth_new_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://images.unsplash.com/photo-1554454188-f84071b1695f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
  )
Chef.create!(
    name: sixth_new_user.name,
    specialty: Faker::Restaurant.type,
    rating: 4,
    description: Faker::Movies::StarWars.quote,
    user: sixth_new_user
  )

seventh_new_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://images.unsplash.com/photo-1541881856704-3c4b2896c0f8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
  )
Chef.create!(
    name: seventh_new_user.name,
    specialty: Faker::Restaurant.type,
    rating: 4,
    description: Faker::Movies::StarWars.quote,
    user: seventh_new_user
  )

eighth_new_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://www.jonathanthompsonphotography.com/wp-content/uploads/2017/11/Chef-Robin-Gill-Portrait-Art-Culinaire-Magazine-The-Dairy-Clapham.jpg"
  )
Chef.create!(
    name: eighth_new_user.name,
    specialty: Faker::Restaurant.type,
    rating: 4,
    description: Faker::Movies::StarWars.quote,
    user: eighth_new_user
  )

puts 'Creating 8 random chefs with raiting 5...'

ninth_new_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://images.squarespace-cdn.com/content/v1/51c1efe0e4b0b485e9579892/1499801828045-PO3BV52DW4XS7RCLAYPQ/ke17ZwdGBToddI8pDm48kHbyMxtMNNSCtlLRHoG2ASBZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZUJFbgE-7XRK3dMEBRBhUpy5UPpduxhVJIDdv7lJzsCRfvUqmx_TfFp0yF9Kyrkhn0sa9CUmR1X55pFtwATNAbI/Chefs_2_08.jpg"
  )
Chef.create!(
    name: ninth_new_user.name,
    specialty: Faker::Restaurant.type,
    rating: 5,
    description: Faker::Movies::StarWars.quote,
    user: ninth_new_user
  )

tenth_new_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOcaHWHItqlFoTcqq1swgU2gAZ_Qeu4tsbxwq8iyBvuN6g5IMcTQ"
  )
Chef.create!(
    name: tenth_new_user.name,
    specialty: Faker::Restaurant.type,
    rating: 5,
    description: Faker::Movies::StarWars.quote,
    user: tenth_new_user
  )

eleventh_new_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9oaezcIsqyHzbIucztSemtoJejBgzjO8HTLHzVX6seM3BlgbuFQ"
  )
Chef.create!(
    name: eleventh_new_user.name,
    specialty: Faker::Restaurant.type,
    rating: 5,
    description: Faker::Movies::StarWars.quote,
    user: eleventh_new_user
  )

twelfth_new_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZ67L-yqNEzWz1o3JFOHhyNfr5TNLw5lmas0y-zktowAwVK-ud"
  )
Chef.create!(
    name: twelfth_new_user.name,
    specialty: Faker::Restaurant.type,
    rating: 5,
    description: Faker::Movies::StarWars.quote,
    user: twelfth_new_user
  )

thirteenth_new_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9M29A2YvnPf9ou7Rbl2Ou4fU2wC4EdengV7cFNjqfLaSzjRjc8Q"
  )
Chef.create!(
    name: thirteenth_new_user.name,
    specialty: Faker::Restaurant.type,
    rating: 5,
    description: Faker::Movies::StarWars.quote,
    user: thirteenth_new_user
  )

fourteenth_new_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNEPkigsDDTnTQ8EalML7M6FOW-OAy7E3_1IL7lAA-aXq9Zi8vJQ"
  )
Chef.create!(
    name: fourteenth_new_user.name,
    specialty: Faker::Restaurant.type,
    rating: 5,
    description: Faker::Movies::StarWars.quote,
    user: fourteenth_new_user
  )

fifteenth_new_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTykb3SPxYcgPkjZj5eWvqzS1w6i163HSL6u1Emj69WGQsLqxeo"
  )
Chef.create!(
    name: fifteenth_new_user.name,
    specialty: Faker::Restaurant.type,
    rating: 5,
    description: Faker::Movies::StarWars.quote,
    user: fifteenth_new_user
  )

sixteenth_new_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQc-X_k8QAioP6Zc76d49iSi29610veCAMXanq3AXHbsQ2BS_sA"
  )
Chef.create!(
    name: sixteenth_new_user.name,
    specialty: Faker::Restaurant.type,
    rating: 5,
    description: Faker::Movies::StarWars.quote,
    user: sixteenth_new_user
  )

seventeenth_new_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ54oPwjOQmU-9oHoRoxayMUj_pYvjB017q16Mfr3noyXuMR1bQ"
  )
Chef.create!(
    name: seventeenth_new_user.name,
    specialty: Faker::Restaurant.type,
    rating: 5,
    description: Faker::Movies::StarWars.quote,
    user: seventeenth_new_user
  )

eighteenth_new_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQwEaUIULozAdUA8v1-Npf6im-aiAMftesNmiVW3W0VpBeINKZmA"
  )
Chef.create!(
    name: eighteenth_new_user.name,
    specialty: Faker::Restaurant.type,
    rating: 5,
    description: Faker::Movies::StarWars.quote,
    user: eighteenth_new_user
  )

puts 'Created 8 random chefs with raiting 5.'



puts 'Finished!'
