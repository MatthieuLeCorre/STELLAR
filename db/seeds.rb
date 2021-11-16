# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

trip1 = Trip.create({
  planet: "Mercury",
  gravity: "Very weak",
  exit: true,
  price_per_night: 4400,
  transport_price: 8900,
  spaceship: "Space X Falcon 9",
  description: "Enjoy this trip on Mercury, one of the most beautiful planet of the Solar System !",
  survival: 87
})


trip2 = Trip.create({
  planet: "Venus",
  gravity: "average",
  exit: true,
  price_per_night: 2500,
  transport_price: 3600,
  spaceship: "NASA Orion Spacecraft",
  description: "Venus is so trendy right now ! Come visit this amazing telluric planet !",
  survival: 55
})

trip3 = Trip.create({
  planet: "Mars",
  gravity: "weak",
  exit: true,
  price_per_night: 1100,
  transport_price: 2000,
  spaceship: "NASA Atlantis Spacecraft",
  description: "The very famous red planet welcomes you ! Our 5 stars hotel will make your trip an incredible lifetime experience !",
  survival: 95
})

trip4 = Trip.create({
  planet: "Jupiter",
  gravity: "strong",
  exit: true,
  price_per_night: 5600,
  transport_price: 3300,
  spaceship: "Space X Falcon 9",
  description: "The Sheraton Jupiter is welcoming you on one of the hottest planet right now. Enjoy the beautiful view and Jupiter north pole cyclones !",
  survival: 40
})

trip5 = Trip.create({
  planet: "Sun",
  gravity: "very strong",
  exit: true,
  price_per_night: 10600,
  transport_price: 8300,
  spaceship: "Space X Falcon 9",
  description: "You need some warmth and you're not afraid of sun burns ? This trip is made for you ! ",
  survival: 17,
})

  trips6 = Trip.create({
  planet: 'Neptune',
  gravity: 'average',
  exit: true,
  price_per_night: 10_000,
  transport_price: 1000,
  spaceship: 'Angara',
  description: 'Welcome to the neptune travel.',
  survival: 15,
})

trips7 = Trip.create({
  planet: 'Neptune',
  gravity: 'average',
  exit: true,
  price_per_night: 30_000,
  transport_price: 10_000,
  spaceship: 'Starship SN15',
  description: '',
  survival: 78,
})

trips8 = Trip.create({
  planet: 'Saturne',
  gravity: 'strong',
  price_per_night: '3400',
  transport_price: '500',
  description: '',
  survival: 75,
})
