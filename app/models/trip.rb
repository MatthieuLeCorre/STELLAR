class Trip < ApplicationRecord
  validates :planet, presence: true
  validates :gravity, presence: true
  validates :price_per_night, presence: true
  validates :transport_price, presence: true
  validates :exit, presence: true
  validates :spaceship, presence: true
  validates :description, presence: true
  validates :survival, presence: true

  has_many :bookings
  has_many :users, through: :bookings
  has_one_attached :photo
end
