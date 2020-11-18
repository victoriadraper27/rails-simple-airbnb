# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."

4.times do
  attributes = {
    name: Faker::Marketing.buzzwords,
    address: Faker::Address.full_address,
    description: Faker::Quote.matz,
    price_per_night: Faker::Commerce.price,
    number_of_guests: Faker::Number.within(range: 1..9)
  }
  flat = Flat.create!(attributes)

  puts "Created #{flat.name}"
end

puts "Finished! Created #{Flat.count} flats"
