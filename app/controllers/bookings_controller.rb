class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = policy_scope(Booking).order(created_at: :desc)
  end

  def new
    @booking = Booking.new
    @chef = Chef.find(params[:chef_id])
    authorize @booking
  end

  def show
    @booking = Booking.find(params[:id])
  end

  # def edit
  #   @booking = Booking.find(params[:id])
  # end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @chef = Chef.find(params[:chef_id])
    @booking.chef = @chef
    @booking.user = current_user
    if @booking.save
      redirect_to users_show_path
    else
      render :new
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
  end

  def destroy
    @booking = booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def booking_params
    params.require(:booking).permit(:number_of_people, :description, :preferences)
  end
end
