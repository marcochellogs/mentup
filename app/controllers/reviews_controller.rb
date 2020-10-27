class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(allowed_params)
    if @review.save
      redirect_to profile_path(@booking.user)
    else
      render 'new'
    end
  end

  private

  def allowed_params
    params.require(:review).permit(:title, :description, :rating, :booking_id)

  end
end
