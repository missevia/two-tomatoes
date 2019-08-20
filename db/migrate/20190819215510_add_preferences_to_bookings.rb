class AddPreferencesToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :preferences, :text
  end
end
