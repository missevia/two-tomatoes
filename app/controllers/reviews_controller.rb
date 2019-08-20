class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.booking = @booking
    @review.save
    redirect_to bookings_path
  end

  private
  def review_params
    params.require(:review)
  end
end
