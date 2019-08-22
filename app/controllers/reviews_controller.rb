class ReviewsController < ApplicationController
  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id].to_i)
    @user = @booking.user
    @review.booking = @booking
    @review.user = @user
    authorize @review
    @review.save
    redirect_to chef_path(Booking.find(params[:booking_id].to_i).chef)
  end

  private
  def review_params
    params.require(:review).permit(:content, :booking_id, :user_id, :rating)
  end
end
