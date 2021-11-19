# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
Trip.destroy_all

launch_address = ["Pacific Spaceport Complex, Alaska, USA",
                  "Mid-Atlantic Regional paceport, Virginia, USA",
                "Centre spatial guyanais,	Kourou, Guyane",
              "Kennedy Space Center, Florida, USA",
            "Satish Dhawan Space Centre, Sriharikota",
        "Xichang Satellite Launch Center, China"]

trip1 = Trip.create({
  planet: "Mercury",
  gravity: "Very weak",
  exit: true,
  price_per_night: 4400,
  transport_price: 8900,
  spaceship: "Space X Falcon 9",
  description: "Enjoy this trip on Mercury, one of the most beautiful planet of the Solar System !",
  survival: 87,
  launch_address: "Pacific Spaceport Complex, Alaska, USA",
  rating: (1..5).to_a.sample,
})


trip2 = Trip.create({
  planet: "Venus",
  gravity: "average",
  exit: true,
  price_per_night: 2500,
  transport_price: 3600,
  spaceship: "NASA Orion Spacecraft",
  description: "Venus is so trendy right now ! Come visit this amazing telluric planet !",
  survival: 55,
  launch_address: "Mid-Atlantic Regional paceport, Virginia, USA",
  rating: (1..5).to_a.sample,
  number_of_comments: (50..100).to_a.sample
})

trip3 = Trip.create({
  planet: "Mars",
  gravity: "weak",
  exit: true,
  price_per_night: 1100,
  transport_price: 2000,
  spaceship: "NASA Atlantis Spacecraft",
  description: "The very famous red planet welcomes you ! Our 5 stars hotel will make your trip an incredible lifetime experience !",
  survival: 95,
  launch_address: "Centre spatial guyanais,	Kourou, Guyane",
  rating: (1..5).to_a.sample,
  number_of_comments: (50..100).to_a.sample
})

trip4 = Trip.create({
  planet: "Jupiter",
  gravity: "strong",
  exit: true,
  price_per_night: 5600,
  transport_price: 3300,
  spaceship: "Space X Falcon 9",
  description: "The Sheraton Jupiter is welcoming you on one of the hottest planet right now. Enjoy the beautiful view and Jupiter north pole cyclones !",
  survival: 40,
  launch_address: "Kennedy Space Center, Florida, USA",
  rating: (1..5).to_a.sample,
  number_of_comments: (50..100).to_a.sample
})

trip5 = Trip.create({
  planet: "Sun",
  gravity: "very strong",
  exit: true,
  price_per_night: 10600,
  transport_price: 8300,
  spaceship: "Space X Falcon 9",
  description: "You need some warmth and you're not afraid of sun burns ? This trip is made for you !",
  survival: 17,
  launch_address: "Satish Dhawan Space Centre, Sriharikota",
  rating: (1..5).to_a.sample,
  number_of_comments: (50..100).to_a.sample
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
  launch_address: "Xichang Satellite Launch Center, China",
  rating: (1..5).to_a.sample,
  number_of_comments: (50..100).to_a.sample
})

trips7 = Trip.create({
  planet: 'Neptune',
  gravity: 'average',
  exit: true,
  price_per_night: 30_000,
  transport_price: 10_000,
  spaceship: 'Starship SN15',
  description: 'Neptune is da shit baby !!',
  survival: 78,
  launch_address:  "Satish Dhawan Space Centre, Sriharikota",
  rating: (1..5).to_a.sample,
  number_of_comments: (50..100).to_a.sample,
})

trips8 = Trip.create({
  planet: 'Saturne',
  gravity: 'strong',
  price_per_night: '3400',
  transport_price: '500',
  description: 'The best Planet in the Solar System :-)',
  survival: 75,
  launch_address: "Kennedy Space Center, Florida, USA",
  rating: (1..5).to_a.sample,
})
