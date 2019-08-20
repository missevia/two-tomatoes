class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @chef = Chef.find(params[:chef_id])
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @chef = Chef.find(params[:chef_id])
    @booking.chef = @chef
    @booking.user = current_user
    if @booking.save
      redirect_to users_show_path
    else
      render :new
    end
  end

  def booking_params
    params.require(:booking).permit(:number_of_people, :description, :preferences)
  end
end
