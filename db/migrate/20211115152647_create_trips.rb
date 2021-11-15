class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :planet
      t.string :gravity
      t.boolean :exit
      t.integer :price_per_night
      t.integer :transport_price
      t.string :spaceship
      t.string :description
      t.integer :survival

      t.timestamps
    end
  end
end
