class Trip < ApplicationRecord
  validates :planet, presence: true
  validates :gravity, presence: true
  validates :price_per_night, presence: true
  validates :transport_price, presence: true
  validates :exit, presence: true
  validates :spaceship, presence: true, acceptance: { accept: ["Space X Falcon 9", "Space X Falcon Heavy", "Ariane 5",
                   "NASA Orion Spacecraft", "NASA Atlantis Spacecraft", "Angara",
                   "Starship SN15", "Proton"]}
  validates :description, presence: true
  validates :survival, presence: true,
            numericality: { only_integer: true, greater_than_or_equal_to: 0,
            less_than_or_equal_to: 100 }

  has_many :bookings
  has_many :users, through: :bookings
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_planet_and_description,
    against: [ :planet, :description],
    using: {
      tsearch: { prefix: true }
    }
  pg_search_scope :search_survival,
    against: [ :survival]

  pg_search_scope :search_price_per_night,
    against: [ :price_per_night]

  pg_search_scope :search_spaceship,
    against: [ :spaceship],
    using: {
      tsearch: { prefix: true }
    }
end
