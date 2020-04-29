# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
Movie.destroy_all 
# OtherModel.destroy_all

my_genre = ["Action", "Horreur", "Comédie", "Drame"]


100.times do
  movie = Movie.create!(name: Faker::Movie.quote, year: Faker::Number.between(from: 1900, to: 2020), 
  synopsis: Faker::Lorem.sentence(word_count: 10),
  director: Faker::Book.author, 
  allocine_rating: Faker::Number.between(from: 0, to: 5), 
  genre: my_genre[rand(my_genre.length)],  already_seen: false,
  my_rating: nil)
end



# name: Faker::Name.first_name
# last_name: Faker::Name.last_name,