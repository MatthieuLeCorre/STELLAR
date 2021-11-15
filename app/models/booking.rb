class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :trip

  validates :name, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :price, presence: true
end
