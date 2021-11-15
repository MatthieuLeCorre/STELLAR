# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

trips6 = Trip.create({
  name: 'Neptune',
  gravity: 'average',
  exit: true,
  price_per_night: 10_000,
  transport_price: 1000,
  spaceship: 'Angara',
  description: 'Welcome to the neptune travel.',
  survival: 15,
})

trips7 = Trip.create({
  name: 'Neptune',
  gravity: 'average',
  exit: true,
  price_per_night: 30_000,
  transport_price: 10_000,
  spaceship: 'Starship SN15',
  description: '',
  survival: 78,
})

trips8 = Trip.create({
  name: 'Saturne',
  gravity: 'strong',
  price_per_night: '3400',
  transport_price: '500',
  description: '',
  survival: 75,
})
