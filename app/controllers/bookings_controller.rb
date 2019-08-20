class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @chef = Chef.find(params[:chef_id])
  end
end
