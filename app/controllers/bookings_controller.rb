class BookingsController < ApplicationController
  def index
    @lesson = current_user.lesson
    @bookings = @lesson ? @lesson.bookings : current_user.bookings
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(allowed_params)
    @booking.user = current_user
    if @booking.save
      redirect_to lesson_path(params[:lesson_id])
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
