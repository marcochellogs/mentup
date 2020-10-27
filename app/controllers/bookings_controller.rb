class BookingsController < ApplicationController
  def index
    @bookings = current_user.lesson.bookings
    #for each booking booking.review to show your user reviews
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(allowed_params)
    @booking.user = current_user
    if @booking.save
      redirect_to lesson_path(@booking.lesson_id)
    else
      render 'new'
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
  end

  private

  def allowed_params
    params.require(:booking).permit(:date, :lesson_id, :user_id)
  end
end
