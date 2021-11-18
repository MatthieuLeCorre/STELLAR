class AddPaidPriceToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :paid_price, :integer, default: 0
  end
end
