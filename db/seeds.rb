# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'date'
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

first_review_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://images.unsplash.com/photo-1517810095498-0f282469aba9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
  )

second_review_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
  )

third_review_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://images.unsplash.com/photo-1513732822839-24f03a92f633?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
  )

fourth_review_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://images.unsplash.com/photo-1521119989659-a83eee488004?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
  )

fifth_review_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://images.unsplash.com/photo-1531251445707-1f000e1e87d0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
  )

sixth_review_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://images.unsplash.com/photo-1499996860823-5214fcc65f8f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
  )

seventh_review_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://images.unsplash.com/photo-1513956589380-bad6acb9b9d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
  )

eighth_review_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://images.unsplash.com/photo-1489424731084-a5d8b219a5bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
  )



puts 'Created 20 random users.'

puts 'Creating user "Justin". Email: justin@mail.com; pw: 654321...'

justin = User.create!(
  name: "Justin",
  email: "justin@mail.com",
  password: "654321",
  image: "https://regmedia.co.uk/2017/08/29/shutterstock_bitcoin.jpg?x=442&y=293&crop=1"
)

puts 'Created Justin'

puts 'Creating user "Justin\'s Mom". Email: mom@mail.com; pw: 654321...'

justin_mom = User.create!(
  name: "Justin\'s Mom",
  email: "mom@mail.com",
  password: "654321",
  image: "https://i.imgur.com/I3kr4lj.jpg"
)

puts 'Created Justin\'s Mom'

puts 'Creating users "Lila", "Evia", "Ahmad" and "Moritz". For each user Email: NAME@mail.com; pw: 654321...'

lila = User.create!(
  name: "Lila",
  email: "lila@mail.com",
  password: "654321",
  image: "https://media.licdn.com/dms/image/C4D03AQHdVHM4w0BcWQ/profile-displayphoto-shrink_800_800/0?e=1571875200&v=beta&t=f2MWy86MWC_-744stDXsk61lcfxak7BUAwIArJ_Tw_M"
)

evia = User.create!(
  name: "Evia",
  email: "evia@mail.com",
  password: "654321",
  image: "https://media.licdn.com/dms/image/C5603AQHTICoQhwGqLQ/profile-displayphoto-shrink_800_800/0?e=1571875200&v=beta&t=V8Cl6Ehq9N9u6UqgEMNjLTrULvXcN9xunKr7HujF9RA"
)

ahmad = User.create!(
  name: "Ahmad",
  email: "ahmad@mail.com",
  password: "654321",
  image: "https://media.licdn.com/dms/image/C5603AQEtT7Jj-y0DUg/profile-displayphoto-shrink_800_800/0?e=1571875200&v=beta&t=DiiHmfRPAMocHGh_Zqrrf4w6vL_PABoXndUO1acCrAk"
)

moritz = User.create!(
  name: "Moritz",
  email: "moritz@mail.com",
  password: "654321",
  image: "https://lindenpartners.eu/wp-content/uploads/2015/03/indenhuck-author.jpg"
)

puts 'Created "Lila", "Evia", "Ahmad" and "Moritz"'

@review_users = [first_review_user, second_review_user, third_review_user, fourth_review_user, fifth_review_user, sixth_review_user, seventh_review_user, eighth_review_user, evia, lila, moritz, ahmad]

puts 'Creating 2 random chefs with raiting 3...'

def create_reviews(chef)
  number = rand(1..7)
  number.times do
    review_user = @review_users.sample
    booking = Booking.create!(user: review_user, chef: chef, date: (Date.new(2019,8,(20 - number))), number_of_people: (number + 2), description: (Faker::Movies::StarWars.quote), preferences: (Faker::Movies::StarWars.quote))
    Review.create!(user: review_user, booking: booking, rating: rand(4..5), content: (Faker::Restaurant.review))
  end
end

# 1

first_new_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://images.unsplash.com/photo-1559575003-fb4ee38a747d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60"
  )
first_chef = Chef.create!(
    name: first_new_user.name,
    specialty: Faker::Restaurant.type,
    rating: 3,
    description: Faker::Movies::StarWars.quote,
    user: first_new_user,
    price: rand(50..200)
  )

create_reviews(first_chef)

# 2

second_new_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://images.unsplash.com/photo-1543965170-e3d16958f280?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
  )
second_chef = Chef.create!(
    name: second_new_user.name,
    specialty: Faker::Restaurant.type,
    rating: 3,
    description: Faker::Movies::StarWars.quote,
    user: second_new_user,
    price: rand(50..200)
  )

create_reviews(second_chef)

puts 'Created 2 random chefs with raiting 3.'


puts 'Creating 6 random chefs with raiting 4...'

# 3

third_new_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://images.unsplash.com/photo-1558549900-c11cb6293fb6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
  )
third_chef = Chef.create!(
    name: third_new_user.name,
    specialty: Faker::Restaurant.type,
    rating: 4,
    description: Faker::Movies::StarWars.quote,
    user: third_new_user,
    price: rand(50..200)
  )

create_reviews(third_chef)

# 4

fourth_new_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://images.unsplash.com/photo-1548612621-77df2f2c5246?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
  )
fourth_chef = Chef.create!(
    name: fourth_new_user.name,
    specialty: Faker::Restaurant.type,
    rating: 4,
    description: Faker::Movies::StarWars.quote,
    user: fourth_new_user,
    price: rand(50..200)
  )
create_reviews(fourth_chef)

# 5

fifth_new_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://images.unsplash.com/photo-1543716627-839b54c40519?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
  )
fifth_chef = Chef.create!(
    name: fifth_new_user.name,
    specialty: Faker::Restaurant.type,
    rating: 4,
    description: Faker::Movies::StarWars.quote,
    user: fifth_new_user,
    price: rand(50..200)
  )

create_reviews(fifth_chef)

# 6

sixth_new_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://images.unsplash.com/photo-1554454188-f84071b1695f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
  )
sixth_chef = Chef.create!(
    name: sixth_new_user.name,
    specialty: Faker::Restaurant.type,
    rating: 4,
    description: Faker::Movies::StarWars.quote,
    user: sixth_new_user,
    price: rand(50..200)
  )
create_reviews(sixth_chef)

seventh_new_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://images.unsplash.com/photo-1541881856704-3c4b2896c0f8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
  )
seventh_chef = Chef.create!(
    name: seventh_new_user.name,
    specialty: Faker::Restaurant.type,
    rating: 4,
    description: Faker::Movies::StarWars.quote,
    user: seventh_new_user,
    price: rand(50..200)
  )

create_reviews(seventh_chef)

# 8

eighth_new_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://www.jonathanthompsonphotography.com/wp-content/uploads/2017/11/Chef-Robin-Gill-Portrait-Art-Culinaire-Magazine-The-Dairy-Clapham.jpg"
  )
eighth_chef = Chef.create!(
    name: eighth_new_user.name,
    specialty: Faker::Restaurant.type,
    rating: 4,
    description: Faker::Movies::StarWars.quote,
    user: eighth_new_user,
    price: rand(50..200)
  )

create_reviews(eighth_chef)

puts 'Creating 8 random chefs with raiting 5...'

# 9

ninth_new_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://images.squarespace-cdn.com/content/v1/51c1efe0e4b0b485e9579892/1499801828045-PO3BV52DW4XS7RCLAYPQ/ke17ZwdGBToddI8pDm48kHbyMxtMNNSCtlLRHoG2ASBZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZUJFbgE-7XRK3dMEBRBhUpy5UPpduxhVJIDdv7lJzsCRfvUqmx_TfFp0yF9Kyrkhn0sa9CUmR1X55pFtwATNAbI/Chefs_2_08.jpg"
  )
ninth_chef = Chef.create!(
    name: ninth_new_user.name,
    specialty: Faker::Restaurant.type,
    rating: 5,
    description: Faker::Movies::StarWars.quote,
    user: ninth_new_user,
    price: rand(50..200)
  )

create_reviews(ninth_chef)

#10

tenth_new_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOcaHWHItqlFoTcqq1swgU2gAZ_Qeu4tsbxwq8iyBvuN6g5IMcTQ"
  )
tenth_chef = Chef.create!(
    name: tenth_new_user.name,
    specialty: Faker::Restaurant.type,
    rating: 5,
    description: Faker::Movies::StarWars.quote,
    user: tenth_new_user,
    price: rand(50..200)
  )

create_reviews(tenth_chef)

# 11

eleventh_new_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9oaezcIsqyHzbIucztSemtoJejBgzjO8HTLHzVX6seM3BlgbuFQ"
  )
eleventh_chef = Chef.create!(
    name: eleventh_new_user.name,
    specialty: Faker::Restaurant.type,
    rating: 5,
    description: Faker::Movies::StarWars.quote,
    user: eleventh_new_user,
    price: rand(50..200)
  )

create_reviews(eleventh_chef)

# 12

twelfth_new_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZ67L-yqNEzWz1o3JFOHhyNfr5TNLw5lmas0y-zktowAwVK-ud"
  )
twelfth_chef = Chef.create!(
    name: twelfth_new_user.name,
    specialty: Faker::Restaurant.type,
    rating: 5,
    description: Faker::Movies::StarWars.quote,
    user: twelfth_new_user,
    price: rand(50..200)
  )

create_reviews(twelfth_chef)

#13

thirteenth_new_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9M29A2YvnPf9ou7Rbl2Ou4fU2wC4EdengV7cFNjqfLaSzjRjc8Q"
  )
thirteenth_chef = Chef.create!(
    name: thirteenth_new_user.name,
    specialty: Faker::Restaurant.type,
    rating: 5,
    description: Faker::Movies::StarWars.quote,
    user: thirteenth_new_user,
    price: rand(50..200)
  )

create_reviews(thirteenth_chef)

#14

fourteenth_new_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNEPkigsDDTnTQ8EalML7M6FOW-OAy7E3_1IL7lAA-aXq9Zi8vJQ"
  )
fourteenth_chef = Chef.create!(
    name: fourteenth_new_user.name,
    specialty: Faker::Restaurant.type,
    rating: 5,
    description: Faker::Movies::StarWars.quote,
    user: fourteenth_new_user,
    price: rand(50..200)
  )

create_reviews(fourteenth_chef)

# 15

fifteenth_new_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTykb3SPxYcgPkjZj5eWvqzS1w6i163HSL6u1Emj69WGQsLqxeo"
  )
fifteenth_chef = Chef.create!(
    name: fifteenth_new_user.name,
    specialty: Faker::Restaurant.type,
    rating: 5,
    description: Faker::Movies::StarWars.quote,
    user: fifteenth_new_user,
    price: rand(50..200)
  )

create_reviews(fifteenth_chef)

# 16

sixteenth_new_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQc-X_k8QAioP6Zc76d49iSi29610veCAMXanq3AXHbsQ2BS_sA"
  )
sixteenth_chef = Chef.create!(
    name: sixteenth_new_user.name,
    specialty: Faker::Restaurant.type,
    rating: 5,
    description: Faker::Movies::StarWars.quote,
    user: sixteenth_new_user,
    price: rand(50..200)
  )

create_reviews(sixteenth_chef)

# 17

seventeenth_new_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ54oPwjOQmU-9oHoRoxayMUj_pYvjB017q16Mfr3noyXuMR1bQ"
  )
seventeenth_chef = Chef.create!(
    name: seventeenth_new_user.name,
    specialty: Faker::Restaurant.type,
    rating: 5,
    description: Faker::Movies::StarWars.quote,
    user: seventeenth_new_user,
    price: rand(50..200)
  )

create_reviews(seventeenth_chef)

# 18

eighteenth_new_user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQwEaUIULozAdUA8v1-Npf6im-aiAMftesNmiVW3W0VpBeINKZmA"
  )
eighteenth_chef = Chef.create!(
    name: eighteenth_new_user.name,
    specialty: Faker::Restaurant.type,
    rating: 5,
    description: Faker::Movies::StarWars.quote,
    user: eighteenth_new_user,
    price: rand(50..200)
  )

create_reviews(eighteenth_chef)

puts 'Created 8 random chefs with raiting 5.'



puts 'Finished!'
