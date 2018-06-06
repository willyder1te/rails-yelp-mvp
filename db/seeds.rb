# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name: 'Chez Luca',
    address: '7 Boundary St, London E2 7JE',
    phone_number: '3341457696',
    category: "french"
  },
  {
    name: 'At Fedes',
    address: '56A Shoreditch High St, London E1 6PQ',
    phone_number: 'Pizzeria with industrial looks, serving rustic pizza and antipasti.',
    category: "chinese"
  },
   {
    name: 'Mamma',
    address: 'Via castiglione del lago, Roma',
    phone_number: 'Pizzeria with industrial looks, serving rustic pizza and antipasti.',
    category: "italian"
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
