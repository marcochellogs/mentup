class BookingsController < ApplicationController
  def index
  @mentor_bookings = current_user.bookings
  @student_bookings = current_user.lesson.bookings
  @bookings = []
  @student_bookings.each { |booking| @bookings << booking }
  @mentor_bookings.each { |booking| @bookings << booking }
  end

  def new
    @lesson = Lesson.find(params[:lesson_id])
    @booking = Booking.new
  end

  def create
    @lesson = Lesson.find(params[:lesson_id])
    @booking = Booking.new(allowed_params)
    @booking.lesson_id = params[:lesson_id]
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
    redirect_to bookings_path
  end

  private

  def allowed_params
    params.require(:booking).permit(:date)
  end
end
