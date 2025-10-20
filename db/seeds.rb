# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb
require 'faker'

puts "🌱 Seeding pickleball games..."

skill_levels = ["Beginner", "Intermediate", "Advanced"]
formats = ["Singles", "Doubles"]
locations = [
  "123 Sheridan Rd, Evanston IL 60201",
  "309 Chicago Ave, Evanston IL 60201",
  "Skokie Public Park",
  "Northwestern Tennis Courts",
  "Loyola Rec Center",
  "Lincolnwood Community Courts",
  "Michigan Shores Paddleball Courts",
  "101 State St, Chicago IL 12345",
  "888 Lincoln Ave, Lincoln NE 54321",
  "Oswego Public Park"
]

20.times do
  doubles_game = [true, false].sample
  format = doubles_game ? "Doubles" : "Singles"

  Game.find_or_create_by!(
    date: Faker::Date.between(from: Date.today, to: 6.months.from_now),
    time: Faker::Time.between(from: Time.parse("07:00"), to: Time.parse("19:00")),
    skill_level: skill_levels.sample,
    location: locations.sample,
    format: format,
    doubles: doubles_game,
    contact_info: [Faker::PhoneNumber.cell_phone, Faker::Internet.email].sample
  )
end

puts "✅ Seeded #{Game.count} total games!"
