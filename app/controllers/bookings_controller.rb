class BookingsController < ApplicationController
  def index
    @bookings = []
    if current_user.bookings != nil
      @mentor_bookings = current_user.bookings
      @mentor_bookings.each { |booking| @bookings << booking }
    end

    if current_user.lesson != nil
      @student_bookings = current_user.lesson.bookings
      @student_bookings.each { |booking| @bookings << booking }
    end
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
    if is_booked?(@booking)
      if @booking.save
        redirect_to lesson_path(params[:lesson_id])
        flash[:alert] = "Booking successful"
      else
        render 'new'
      end
    else
      flash[:notice] = "The Mentor is already booked for this time"
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

  def is_booked?(booking)
    booking.lesson.bookings.all? do |check|
      booking.end_date < check.date || booking.date > check.end_date
    end
  end
end
